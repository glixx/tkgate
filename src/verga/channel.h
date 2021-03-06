/****************************************************************************
    Copyright (C) 1987-2015 by Jeffery P. Hansen
    Copyright (C) 2015-2019 by Andrey V. Skvortsov

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

****************************************************************************/
#ifndef __channel_h
#define __channel_h
/*****************************************************************************
 *
 * Data Channel Data Structures
 *
 * Data queues are used to implement communication channels.  These are accessed
 * through the system tasks $tkg$write and $tkg$read.  It is also possible for
 * the GUI write to a channel through command $write.
 *
 *****************************************************************************/

struct Channel_str {
  char			*c_name;	/* Name of channel */
  List/*Value*/		c_queue;	/* Queue of channel */
  List/*Event*/		c_wake;		/* Events to be executed on wake up */
  int			c_isWatched;	/* Flag to indicated if this is a "watched" channel */
  char			*c_format;	/* Format for watched data */
};

Channel *new_Channel(const char *name);
int Channel_queueLen(Channel *c);
void Channel_wait(Channel *c, VGThread *thread);
int Channel_read(Channel *c, Value *data);
int Channel_write(Channel *c, Value *data);
int Channel_setWatch(Channel *c, int doWatch, const char *format);

#endif
