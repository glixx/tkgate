#!/bin/sh

#   Copyright (C) 1987-2015 by Jeffery P. Hansen
#   Copyright (C) 2015-2019 by Andrey V. Skvortsov
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License along
#   with this program; if not, write to the Free Software Foundation, Inc.,
#   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

# This script allows to catch errors after converting from PO into messages
# and it helps to see translators' errors
# You need gettext installed

# Author: Loginov Alexey (alexl@mageia.org)

result_file="converting_test.diff"
rm -f $result_file

for lang in `ls -1|grep -v pot|grep -v tcl |grep -v sh|cut -d "/" --fields=1|grep -v en`
do
./messages2po.tcl -m en/messages -l $lang/messages -po $lang/"$lang"1.po -lang $lang
msguniq "$lang/$lang"1.po -o "$lang/$lang"3.po
msguniq "$lang/messages_$lang".po -o "$lang/$lang"2.po
cat $lang/"$lang"3.po |sed '1,/#: / d' > $lang/"$lang"4.po
cat $lang/"$lang"2.po |sed '1,/#: / d' > $lang/"$lang"5.po
diff -u "$lang/$lang"4.po "$lang/$lang"5.po > $lang/1.diff
sed -i "/$lang\/messages/d" $lang/1.diff
sed -i '/en\/messages/d' $lang/1.diff
sed -i '/@@/d' $lang/1.diff
#sed -i '/---/d' $lang/1.diff
cat $lang/1.diff|grep "^-" > $lang/2.diff
#cat $lang/1.diff|grep "^+" >> $lang/2.diff
sed -i "s|4.po|.po|g" $lang/2.diff
sed -i "s|5.po|.po|g" $lang/2.diff
cat $lang/2.diff >> $result_file
# cleanup
rm -f $lang/"$lang"1.po
rm -f $lang/"$lang"2.po
rm -f $lang/"$lang"3.po
rm -f $lang/"$lang"4.po
rm -f $lang/"$lang"5.po
rm -f $lang/1.diff
rm -f $lang/2.diff
done

echo
echo "File $result_file was created."
echo "If file is empty, then everything is OK."
