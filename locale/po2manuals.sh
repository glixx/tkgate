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
    file_po="$lang/manuals_$lang.po"
    if [ ! -f "$file_po" ]
    then
       echo "File $file_po does not exists"
       continue
    fi

    rm -rf $lang/examples
    rm -rf $lang/tutorials
    cp -af en/examples $lang/
    cp -af en/tutorials $lang/
    
    for file_v in `find ./$lang -regex '.*\(v\|gm\).*'`
    do
        echo "Working with $file_v"
        tmp_file1=$file_v
        tmp_file2="$lang/manuals_$lang.po.tmp"
        tmp_file3="$lang/1.tmp"

        cp -f $file_po $tmp_file2

        # delete header
        sed -i '1,/^$/d' $tmp_file2
        # \" -> TTTTT
        sed -i 's|\\"|TTTTT|g' $tmp_file2
        # msgid "" -> BBBBB
        sed -i 's|msgid ""|BBBBB|g' $tmp_file2
        # msgstr "" -> CCCCC
        sed -i 's|msgstr ""|CCCCC|g' $tmp_file2
        # delete EOL
        cat $tmp_file2 | tr -d '\n' > $tmp_file3
        mv -f $tmp_file3 $tmp_file2
        # fix wrong auto-multilined strings
        sed -i 's| ""| |g' $tmp_file2
        # add EOL where it needed
        sed -i 's|BBBBB|\nBBBBB\n|g' $tmp_file2
        # add EOL where it needed
        sed -i 's|CCCCC|\nCCCCC\n|g' $tmp_file2
        # add EOL where it needed
        sed -i 's|msgid|\nmsgid|g' $tmp_file2
        # add EOL where it needed
        sed -i 's|msgstr|\nmsgstr|g' $tmp_file2
        # add EOL where it needed
        sed -i 's|\\n""|\\n"\n"|g' $tmp_file2
        # add prefix XXXXX for  //: /line:
        sed -i 's|^"|XXXXX"|g' $tmp_file2
        # delete empty strings
        sed -i '/^$/d' $tmp_file2
        # msgid  -> BBBBB
        sed -i 's|msgid |BBBBB|g' $tmp_file2
        # msgstr  -> CCCCC
        sed -i 's|msgstr |CCCCC|g' $tmp_file2
        # & -> ZZZZZ
        sed -i 's|&|ZZZZZ|g' $tmp_file2
        # * -> DDDDD
        sed -i 's|*|DDDDD|g' $tmp_file2
        # two spaces -> UUUUU
        sed -i 's|  |UUUUU|g' $tmp_file2
        # five spaces -> PPPPP
        sed -i 's|     |PPPPP|g' $tmp_file2
        # [ -> MMMMM
        sed -i 's|\[|MMMMM|g' $tmp_file2
        # mark EOL as IIIII
        sed -i 's|$|IIIII|g' $tmp_file2
        # fix wrong IIIII adding
        sed -i 's|BBBBBIIIII|BBBBB|g' $tmp_file2
        sed -i 's|CCCCCIIIII|CCCCC|g' $tmp_file2
        # delete EOL
        cat $tmp_file2 | tr -d '\n' > $tmp_file3
        mv -f $tmp_file3 $tmp_file2
        # add \n before BBBBB
        sed -i "s|BBBBB|\nBBBBB|g" $tmp_file2
        # delete empty strings
        sed -i '/^$/d' $tmp_file2
        # delete BBBBB
        sed -i "s|BBBBB||g" $tmp_file2
        # add empty string
        echo "" >> $tmp_file2
        # delete \n
        sed -i 's|\\n||g' $tmp_file2

        # mark EOL as IIIII
        sed -i 's|$|IIIII|g' $tmp_file1
        # add prefix XXXXX for  //: /line:
        sed -i 's|  //: /line:|XXXXX|g' $tmp_file1
        # \" -> TTTTT
        sed -i 's|\\"|TTTTT|g' $tmp_file1
        # & -> ZZZZZ
        sed -i 's|&|ZZZZZ|g' $tmp_file1
        # * -> DDDDD
        sed -i 's|*|DDDDD|g' $tmp_file1
        # two spaces -> UUUUU
        sed -i 's|  |UUUUU|g' $tmp_file1
        # five spaces -> PPPPP
        sed -i 's|     |PPPPP|g' $tmp_file1
        # [ -> MMMMM
        sed -i 's|\[|MMMMM|g' $tmp_file1
        # delete EOL
        cat $tmp_file1 | tr -d '\n' > $tmp_file3
        mv -f $tmp_file3 $tmp_file1

        # usual translation
        cat $tmp_file2|while read line
        do
           # FIXME: awk deletes more than 1 space everywhere
           a=`echo $line|awk -F "CCCCC" '{print $1}'`
           b=`echo $line|awk -F "CCCCC" '{print $2}'`
           if [ ! -z "$b" ] && [ ! "$tmp_file1" = "./$lang/examples/ex5/menagerie.gm" ]
           then
             sed -i "s|$a|$b|g" $tmp_file1
           else
             # translate menagerie.gm
             sed -i 's|\\n|<br>|g' ./$lang/examples/ex5/menagerie.gm
             sed -i 's|%s|sssss|g' ./$lang/examples/ex5/menagerie.gm
             sed -i 's|%d|ddddd|g' ./$lang/examples/ex5/menagerie.gm
             a=`echo $a|sed 's|IIIII||g'|sed 's|XXXXX||g'|sed 's|</br>"| "|g'|sed 's|%s|sssss|g'|sed 's|%d|ddddd|g'`
             b=`echo $b|sed 's|IIIII||g'|sed 's|XXXXX||g'|sed 's|</br>"| "|g'|sed 's|%s|sssss|g'|sed 's|%d|ddddd|g'`
             if [ ! -z "$a" ] && [ ! -z "$b" ]
             then
                sed -i "s|$a,0|$b,0|g" $tmp_file1
             fi
           fi
        done
        # restore modifications for menagerie.gm
        sed -i 's|<br>|\\n|g' ./$lang/examples/ex5/menagerie.gm
        sed -i 's|sssss|%s|g' ./$lang/examples/ex5/menagerie.gm
        sed -i 's|ddddd|%d|g' ./$lang/examples/ex5/menagerie.gm

        # special additional translation
        cat $tmp_file2|while read line
        do
           # FIXME: awk deletes more than 1 space everywhere
           a=`echo $line|awk -F "CCCCC" '{print $1}'`
           b=`echo $line|awk -F "CCCCC" '{print $2}'`
           if [ ! -z "$b" ]
           then
             c=`echo $a|sed 's|^"||g'|sed 's|"IIIII$||g'`
             d=`echo $b|sed 's|^"||g'|sed 's|"IIIII$||g'`
             sed -i "s|<h3>$c</h3>|<h3>$d</h3>|g" $tmp_file1
             # translation for "Tutorial Chapters"
             sed -i "s|\. $c</a>|. $d</a>|g" $tmp_file1
             # translation for "Example Page"
             sed -i "s|$c</h3></a>|$d</h3></a>|g" $tmp_file1
           fi
        done

        # FIXME: Japanese does not work with <h1>, </h1>, <h2>, </h2>, <h3>, </h3> tags -> colorizing
        if [ "$lang" = "ja" ]
        then
           sed -i "s|<h1 color=|<font color=|g" $tmp_file1
           sed -i "s|<h1>|<font color=chocolate>|g" $tmp_file1
           sed -i "s|</h1>|</font>|g" $tmp_file1
           sed -i "s|<h2>|<font color=darkorchid>|g" $tmp_file1
           sed -i "s|</h2>|</font>|g" $tmp_file1
           sed -i "s|<h3>|<font color=purple>|g" $tmp_file1
           sed -i "s|</h3>|</font>|g" $tmp_file1
        fi

        # restore marks
        sed -i "s|IIIII|\n|g" $tmp_file1
        sed -i 's|TTTTT|\\"|g' $tmp_file1
        sed -i 's|XXXXXXXXXX|  //: /line:|g' $tmp_file1
        sed -i 's|XXXXX|  //: /line:|g' $tmp_file1
        sed -i 's|ZZZZZ|\&|g' $tmp_file1
        sed -i 's|DDDDD|*|g' $tmp_file1
        sed -i 's|MMMMM|[|g' $tmp_file1
        sed -i 's|UUUUU|  |g' $tmp_file1
        sed -i 's|PPPPP|     |g' $tmp_file1

        # cleanup
        rm -f $tmp_file2

        # add lang
        sed -i "s|//: property locale = \"en\"|//: property locale = \"$lang\"|g" $tmp_file1

        # FIXME while no utf-8 support
        sed -i "s|«|'|g" $tmp_file1
        sed -i "s|»|'|g" $tmp_file1
        sed -i "s|—|-|g" $tmp_file1

        echo "Done for $file_v"
    done
#    # compile menagerie.gm
#    for file in `find ./$lang -name menagerie.gm`
#    do
#    mem=`echo $file|sed 's|.gm|.mem|g'`
#    map=`echo $file|sed 's|.gm|.map|g'`
#    if [ ! -z "$mem" ] && [ ! -z "$map" ] && [ ! -z "$file" ]
#    then
#        echo "Command: gmac -o $mem -m $map $file"
#        gmac -o $mem -m $map $file
#        echo "Done for command"
#    fi
#    done
done
