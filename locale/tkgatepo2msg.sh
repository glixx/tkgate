#!/bin/sh

#   Copyright (C) 1987-2015 by Jeffery P. Hansen
#   Copyright (C) 2015-2018 by Andrey V. Skvortsov
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
for lang in `ls -1|grep -v pot|grep -v tcl |grep -v sh|cut -d "/" --fields=1|grep -v en`
do
    lang1="$lang"1
    lang2="$lang"2

    cat $lang/$lang.po |sed '1,/#: en\/messages/ d' > $lang/$lang1.po
    sed -i '/en\/messages/d' $lang/$lang1.po
    sed -i "s|\"\"/\n\"|\"|g" $lang/$lang1.po
    cat $lang/$lang1.po | tr -d '\n' > $lang/$lang2.po
    sed -i 's|\\n|zzzzz|g' $lang/$lang2.po
    sed -i 's|msgstr ""|xxxxx|g' $lang/$lang2.po
    sed -i 's|""||g' $lang/$lang2.po
    sed -i 's|xxxxx|msgstr "xxxxx"|g' $lang/$lang2.po
    sed -i "s|msgctxt|\nmsgctxt|g" $lang/$lang2.po
    sed -i "s|msgid|\nmsgid|g" $lang/$lang2.po
    sed -i "s|msgstr|\nmsgstr|g" $lang/$lang2.po
    sed -i '/msgid/d' $lang/$lang2.po
    sed -i -e "1d" $lang/$lang2.po
    sed -i 's|\\"|yyyyy|g' $lang/$lang2.po
    echo >> $lang/$lang2.po
    rm -f $lang/messages.utf8
    cat $lang/config.txt >> $lang/messages.utf8
    cat $lang/$lang2.po|while read line
    do
    a=`echo $line|grep msgctxt`
    b=`echo $line|grep msgstr`
    c=`echo $line|grep zzzzz`
    if [ ! -z "$a" ]
    then
        a1=`echo $line|cut -d "\"" --fields=2`
        printf "$a1 " >> $lang/messages.utf8
    fi
    if [ ! -z "$b" ]
    then
        if [ -z "$c" ]
        then
            b1=`echo $line|cut -d "\"" --fields=2`
            echo $b1 >> $lang/messages.utf8
        else
            b1=`echo $line|cut -d "\"" --fields=2`
            echo "-begin-" >> $lang/messages.utf8
            echo $b1 >> $lang/messages.utf8
            echo "-end-" >> $lang/messages.utf8
        fi
    fi
    done

    sed -i 's|zzzzz|\n|g' $lang/messages.utf8
    sed -i 's|yyyyy|\"|g' $lang/messages.utf8
    sed -i '/xxxxx/d' $lang/messages.utf8
    rm -f $lang/$lang1.po
    rm -f $lang/$lang2.po

    rm -f $lang/messages
    rm -f $lang/license.txt
    enc=`cat $lang/config.txt|sed "s|\t| |g" |grep messages-encoding|cut -d " " --fields=2`
    enc=`echo $enc | awk '{print toupper($0)}'`
    if [ ! -z $enc ]
    then
       echo "Converting $lang/messages.utf8 in $enc"
       iconv -f UTF-8 -t $enc $lang/messages.utf8 > $lang/messages
    else
       echo "Missing messages-encoding in $lang/config.txt, using utf-8"
       iconv -f UTF-8 -t UTF-8 $lang/messages.utf8 > $lang/messages
    fi
    rm -f $lang/messages.utf8

    if [ -f "$lang/messages" ]
    then
        d=`cat $lang/messages|grep "license -begin-"`
        if [ ! -z "$d" ]
        then
           echo "Creating $lang/license.txt"
           cat $lang/messages |sed '1,/license -begin-/ d' > $lang/license.txt
           sed -i "/-end-/d" $lang/license.txt
        else
           echo "Do not create $lang/license.txt"
        fi
    else
        echo "File $lang/messages does not exists"
    fi
done
