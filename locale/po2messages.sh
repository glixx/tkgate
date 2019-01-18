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

# Author: Alexey Loginov (alexl@mageia.org)

convert="false"
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
    file_po="$lang/messages_$lang.po"
    if [ ! -f "$file_po" ]
    then
       echo "File $file_po does not exists"
       continue
    fi

    echo "Creating $lang/messages.utf8"

    # temporary files
    lang1="$lang"1
    lang2="$lang"2

    # delete header
    cat $file_po |sed '1,/#: en\/messages/ d' > $lang/$lang1.po
    # delete comments
    sed -i '/en\/messages/d' $lang/$lang1.po
    # screened quotes \" -> YYYYY
    sed -i 's|\\"|YYYYY|g' $lang/$lang1.po
    # [ -> AAAAA
    sed -i 's|\[|AAAAA|g' $lang/$lang1.po
    # ] -> BBBBB
    sed -i 's|\]|BBBBB|g' $lang/$lang1.po
    # ""EOL" -> "
    sed -i "s|\"\"/\n\"|\"|g" $lang/$lang1.po
    # delete EOL
    cat $lang/$lang1.po | tr -d '\n' > $lang/$lang2.po
    # \n -> ZZZZZ
    sed -i 's|\\n|ZZZZZ|g' $lang/$lang2.po
    # msgstr "" -> XXXXX
    sed -i 's|msgstr ""|XXXXX|g' $lang/$lang2.po
    # delete double ""
    sed -i 's|""||g' $lang/$lang2.po
    # add EOL before msgctxt
    sed -i "s|msgctxt|\nmsgctxt|g" $lang/$lang2.po
    # delete all XXXXX strings (not translated)
    sed -i '/XXXXX/d' $lang/$lang2.po
    # add EOL before msgid
    sed -i "s|msgid|\nmsgid|g" $lang/$lang2.po
    # add EOL before msgstr
    sed -i "s|msgstr|\nmsgstr|g" $lang/$lang2.po
    # delete strings with msgid
    sed -i '/msgid/d' $lang/$lang2.po
    # delete the first string
    sed -i -e "1d" $lang/$lang2.po
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
    # line contents ZZZZZ (multiline) or not
    c=`echo $line|grep ZZZZZ`
    # if msgctxt is not empty
    if [ ! -z "$a" ]
    then
        # msgctxt entry
        a1=`echo $line|cut -d "\"" --fields=2`
        # print msgctxt entry and tab into file
        printf "$a1\t" >> $lang/messages.utf8
        # determine -fillbegin-
        fillbegin=`cat en/messages|sed 's/\t//g'|grep "^$a1\-fillbegin\-"`
        # determine -begin-
        begin=`cat en/messages|sed 's/\t//g'|grep "^$a1\-begin\-"`
    fi
    # if msgstr is not empty (has translation)
    if [ ! -z "$b" ]
    then
        # if string is not multiline
        if [ -z "$c" ] && [ -z "$fillbegin" ] && [ -z "$begin" ]
        then
            # msgstr entry
            b1=`echo $line|cut -d "\"" --fields=2`
            # add msgstr entry into file
            echo $b1 >> $lang/messages.utf8
        # if string is multiline
        else
            # msgstr entry
            b1=`echo $line|cut -d "\"" --fields=2`
            # add -begin- or -fillbegin into file
            if [ -z "$fillbegin" ]
            then
              echo "-begin-" >> $lang/messages.utf8
            else
              echo "-fillbegin-" >> $lang/messages.utf8
            fi
            # add msgstr entry into file
            echo $b1 >> $lang/messages.utf8
            # add -end- into file
            echo "-end-" >> $lang/messages.utf8
        fi
    fi
    done

    # restore EOL
    sed -i 's|ZZZZZ|\n|g' $lang/messages.utf8
    # restore screened quotes \"
    sed -i 's|YYYYY|\"|g' $lang/messages.utf8
    # restore [
    sed -i 's|AAAAA|[|g' $lang/messages.utf8
    # restore ]
    sed -i 's|BBBBB|]|g' $lang/messages.utf8
    # add not translatable string
    str1=`cat $lang/messages|grep circ.sim.tv.after.1`
    str2="circ.sim.tv.after.2	-empty-"
    if [ ! -z "$str1" ]
    then
      sed -i "s|$str1|$str1\n$str2|g" $lang/messages.utf8
    else
      echo "$str2" >> $lang/messages.utf8
    fi
    # FIXME while no utf-8 support
    sed -i "s|«|'|g" $lang/messages.utf8
    sed -i "s|»|'|g" $lang/messages.utf8
    sed -i "s|—|-|g" $lang/messages.utf8
    # delete temporary files
    rm -f $lang/$lang1.po
    rm -f $lang/$lang2.po

    # delete resulted files
    rm -f $lang/messages

    if [ "$convert" = "true" ]
    then
        # determine messages-encoding
        enc=`cat $lang/config.txt|sed "s|\t\t| |g" |grep messages-encoding|cut -d " " --fields=2`
        # if messages-encoding is not empty
        if [ ! -z $enc ]
        then
        echo "Converting $lang/messages.utf8 in $enc -> $lang/messages"
        # if messages-encoding is empty
        else
        echo "Missing messages-encoding in $lang/config.txt, using utf-8"
        enc="utf-8"
        fi
        # converting
        iconv -f UTF-8 -t $enc//TRANSLIT $lang/messages.utf8 > $lang/messages
    else
        echo "Doing $lang/messages.utf8 -> $lang/messages"
        cp -f $lang/messages.utf8 $lang/messages
    fi

    rm -f $lang/messages.utf8
done
