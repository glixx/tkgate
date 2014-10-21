/****************************************************************************
    Copyright (C) 1987-2005 by Jeffery P. Hansen

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

    Last edit by hansen on Mon Aug 30 21:38:50 2004
****************************************************************************/
#include "tkgate.h"
#include <stdio.h>
#include <string.h>
#include <pwd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <assert.h>

/* from Xlib tutorial http://www.quixquax.at/bleichling_php/references/x11-tutorial.html */
int utf8toXChar2b(XChar2b *output_r, int outsize, const char *input, int inlen) {
  int j, k;
  for(j =0, k=0; j < inlen && k < outsize; j ++) {
    unsigned char c = input[j];
    if (c < 128) {
	  output_r[k].byte1 = 0;
	  output_r[k].byte2 = c;
      k++;
    } else if (c < 0xC0) {
    /* we're inside a character we don't know  */
      continue;
    } else switch(c&0xF0){
	  case 0xC0: case 0xD0: /* two bytes 5+6 = 11 bits */
        if (inlen < j+1) { return k; }
        output_r[k].byte1 = (c&0x1C) >> 2;
		j++;
		output_r[k].byte2 = ((c&0x3) << 6) + (input[j]&0x3F);
		k++;
		break;
      case 0xE0: /* three bytes 4+6+6 = 16 bits */
        if (inlen < j+2) { return k; }
		j++;
		output_r[k].byte1 = ((c&0xF) << 4) + ((input[j]&0x3C) >> 2);
		c = input[j];
		j++;
		output_r[k].byte2 = ((c&0x3) << 6) + (input[j]&0x3F);
		k++;
		break;
      case 0xFF:
	  /* the character uses more than 16 bits */
		continue;
      }
	}
	return k;
}


#ifndef NDEBUG
int dumpLocale(const Locale *locale,char *buf,size_t bufLen) {
  char stackBuf[512];

  if (bufLen > 512) bufLen = 512;

  strcpy(stackBuf, "\nLocale:    ");
  strcat(stackBuf, "\n\tcode:    "); strcat(stackBuf, locale->l_code);
  strcat(stackBuf, "\n\tname:    "); strcat(stackBuf, locale->l_name);
  strcat(stackBuf, "\n\tmessages:"); strcat(stackBuf, locale->l_messages);
  strcat(stackBuf, "\n\tenc font:"); strcat(stackBuf, locale->l_encFont);
  strcat(stackBuf, "\n\tenc disp:"); strcat(stackBuf, locale->l_encDisplay);
  strcat(stackBuf, "\n\tenc mess:"); strcat(stackBuf, locale->l_encMessages);
  strcat(stackBuf, "\n\tenc vrlg:"); strcat(stackBuf, locale->l_encVerilog);

  if (bufLen > strlen(stackBuf)) {
    strcpy(buf, stackBuf);
    return 0;
  }
  else
    return -1;
}
#endif
