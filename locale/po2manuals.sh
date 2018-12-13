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
    
    for file_v in `find ./$lang -name *.v`
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
        # [ -> OOOOO
        sed -i 's|\[|OOOOO|g' $tmp_file2
        # mark EOL as AAAAA
        sed -i 's|$|AAAAA|g' $tmp_file2
        # fix wrong AAAAA adding
        sed -i 's|BBBBBAAAAA|BBBBB|g' $tmp_file2
        sed -i 's|CCCCCAAAAA|CCCCC|g' $tmp_file2
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
        
        # mark EOL as AAAAA
        sed -i 's|$|AAAAA|g' $tmp_file1
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
        # [ -> OOOOO
        sed -i 's|\[|OOOOO|g' $tmp_file1
        # delete EOL
        cat $tmp_file1 | tr -d '\n' > $tmp_file3
        mv -f $tmp_file3 $tmp_file1

        cat $tmp_file2|while read line
        do
           # FIXME: awk deletes more than 1 space everywhere
           a=`echo $line|awk -F "CCCCC" '{print $1}'`
           b=`echo $line|awk -F "CCCCC" '{print $2}'`
           if [ ! -z "$b" ]
           then
             sed -i "s|$a|$b|g" $tmp_file1
           fi
        done

        # restore marks
        sed -i "s|AAAAA|\n|g" $tmp_file1
        sed -i 's|TTTTT|\\"|g' $tmp_file1
        sed -i 's|XXXXXXXXXX|  //: /line:|g' $tmp_file1
        sed -i 's|XXXXX|  //: /line:|g' $tmp_file1
        sed -i 's|ZZZZZ|\&|g' $tmp_file1
        sed -i 's|DDDDD|*|g' $tmp_file1
        sed -i 's|OOOOO|[|g' $tmp_file1
        sed -i 's|UUUUU|  |g' $tmp_file1
        sed -i 's|PPPPP|     |g' $tmp_file1

        # cleanup
        rm -f $tmp_file2

        # add lang
        sed -i "s|//: property locale = \"en\"|//: property locale = \"$lang\"|g" $tmp_file1
        
        echo "Done for $file_v"
    done
done
