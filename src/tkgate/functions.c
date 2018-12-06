/****************************************************************************
    Copyright (C) 1987-2015 by Jeffery P. Hansen

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

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

void Locale_print(const Locale *locale,FILE *fp) {
  fprintf(fp, "\nLocale:    ");
  fprintf(fp, "\n\tcode:    %s", locale->l_code);
  fprintf(fp, "\n\tname:    %s", locale->l_name);
  fprintf(fp, "\n\tmessages:%s", locale->l_messages);
  fprintf(fp, "\n\tenc font:%s", locale->l_encFont);
  fprintf(fp, "\n\tenc disp:%s", locale->l_encDisplay);
  fprintf(fp, "\n\tenc mess:%s", locale->l_encMessages);
  fprintf(fp, "\n\tenc vrlg:%s", locale->l_encVerilog);
}
