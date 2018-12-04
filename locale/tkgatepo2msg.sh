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

lang_param="$1"
# if commandline parameter is present
if [ ! -z "$lang_param" ]
then
   # if lang directory exists
   if [ -d "$lang_param" ]
   then
      echo "Script will work only for $lang_param"
      langs="$lang_param"
   # if language directory does not exist
   else
      echo "Language directory $lang_param does not exist"
      exit 1
   fi
# if commandline parameter is empty
else
   langs=`ls -1|grep -v pot|grep -v tcl |grep -v sh|cut -d "/" --fields=1|grep -v en`
fi

for lang in $langs
do
    # temporary files
    lang1="$lang"1
    lang2="$lang"2

    # delete header
    cat $lang/$lang.po |sed '1,/#: en\/messages/ d' > $lang/$lang1.po
    # delete comments
    sed -i '/en\/messages/d' $lang/$lang1.po
    # ""EOL" -> "
    sed -i "s|\"\"/\n\"|\"|g" $lang/$lang1.po
    # delete empty strings
    cat $lang/$lang1.po | tr -d '\n' > $lang/$lang2.po
    # \n -> zzzzz
    sed -i 's|\\n|zzzzz|g' $lang/$lang2.po
    # msgstr "" -> xxxxx
    sed -i 's|msgstr ""|xxxxx|g' $lang/$lang2.po
    # delete double ""
    sed -i 's|""||g' $lang/$lang2.po
    # add EOL before msgctxt
    sed -i "s|msgctxt|\nmsgctxt|g" $lang/$lang2.po
    # delete all xxxxx strings (not translated)
    sed -i '/xxxxx/d' $lang/$lang2.po
    # add EOL before msgid
    sed -i "s|msgid|\nmsgid|g" $lang/$lang2.po
    # add EOL before msgstr
    sed -i "s|msgstr|\nmsgstr|g" $lang/$lang2.po
    # delete strings with msgid
    sed -i '/msgid/d' $lang/$lang2.po
    # delete the first string
    sed -i -e "1d" $lang/$lang2.po
    # screened quotes \" -> yyyyy
    sed -i 's|\\"|yyyyy|g' $lang/$lang2.po
    # add EOL
    echo >> $lang/$lang2.po
    # delete file
    rm -f $lang/messages.utf8
    # copying from config.txt
    cat $lang/config.txt >> $lang/messages.utf8
    # add EOL
    echo "" >> $lang/messages.utf8
    # read prepared PO file
    cat $lang/$lang2.po|while read line
    do
    # line contents msgctxt or not
    a=`echo $line|grep msgctxt`
    # line contents msgstr or not
    b=`echo $line|grep msgstr`
    # line contents zzzzz (multiline) or not
    c=`echo $line|grep zzzzz`
    # if msgctxt is not empty
    if [ ! -z "$a" ]
    then
        # msgctxt entry
        a1=`echo $line|cut -d "\"" --fields=2`
        # print msgctxt entry and tab into file
        printf "$a1\t" >> $lang/messages.utf8
    fi
    # if msgstr is not empty (has translation)
    if [ ! -z "$b" ]
    then
        # if string is not multiline
        if [ -z "$c" ]
        then
            # msgstr entry
            b1=`echo $line|cut -d "\"" --fields=2`
            # add msgstr entry into file
            echo $b1 >> $lang/messages.utf8
        # if string is multiline
        else
            # msgstr entry
            b1=`echo $line|cut -d "\"" --fields=2`
            # add -begin- into file 
            echo "-begin-" >> $lang/messages.utf8
            # add msgstr entry into file
            echo $b1 >> $lang/messages.utf8
            # add -end- into file
            echo "-end-" >> $lang/messages.utf8
        fi
    fi
    done

    # restore EOL
    sed -i 's|zzzzz|\n|g' $lang/messages.utf8
    # restore screened quotes \"
    sed -i 's|yyyyy|\"|g' $lang/messages.utf8
    # delete temporary files
    rm -f $lang/$lang1.po
    rm -f $lang/$lang2.po

    # delete resulted files
    rm -f $lang/messages
    rm -f $lang/license.txt
    # determine messages-encoding
    enc=`cat $lang/config.txt|sed "s|\t| |g" |grep messages-encoding|cut -d " " --fields=2`
    # if messages-encoding is not empty
    if [ ! -z $enc ]
    then
       echo "Converting $lang/messages.utf8 in $enc"
       iconv -f UTF-8 -t $enc $lang/messages.utf8 > $lang/messages
    # if messages-encoding is empty
    else
       echo "Missing messages-encoding in $lang/config.txt, using utf-8"
       iconv -f UTF-8 -t UTF-8 $lang/messages.utf8 > $lang/messages
    fi
    # delete temporary file
    rm -f $lang/messages.utf8

    if [ -f "$lang/messages" ]
    then
        d1=`cat $lang/messages|grep "license1"`
        d2=`cat $lang/messages|grep "license2"`
        d3=`cat $lang/messages|grep "license3"`
        # if messages file has full text of licence
        if [[ ! -z "$d1"  &&  ! -z "$d2"  &&  ! -z "$d3" ]]
        then
           echo "Creating $lang/license.txt"
           # delete header before license1
           cat $lang/messages |sed '1,/license1/ d' > $lang/license.txt
           # delete -end- strings
           sed -i "/-end-/d" $lang/license.txt
           # replace license2* string on EOL
           sed -i "s|license2.*$||g" $lang/license.txt
           # replace license3* string on EOL
           sed -i "s|license3.*$||g" $lang/license.txt
        # if messages file has no full text of licence
        else
           echo "Do not create $lang/license.txt, not fully translated"
        fi
    else
        echo "File $lang/messages does not exists"
    fi
done
