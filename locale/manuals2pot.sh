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

pot_file="manuals.pot"
pot_tmp_file="tmp.pot"

rm -f $pot_file
rm -f $pot_tmp_file

for file in `find ./en -name *.v`
do
    # find translatable strings
    cat $file | grep '\(//: comment\|//: /line:\|//: /end\)' >> $pot_file
    cat $file | grep '\(//: property title\|/tx:\)' >> $pot_tmp_file
    echo "" >> $pot_tmp_file
done

# mark comment as XXXXX
sed -i 's|^.*//: comment.*$|XXXXX|g' $pot_file
# delete parts of /line:
sed -i 's|^.*//: /line:||g' $pot_file
# "EOL -> YYYYY"
sed -i 's|"$|YYYYY"|g' $pot_file
# mark lines with /end as ZZZZZ
sed -i "s|^.*//: /end|ZZZZZ|g" $pot_file
# delete strings, what contents .v"
sed -i '/.v"/d' $pot_tmp_file
# //: property title = " -> XXXXX"
sed -i "s|//: property title = \"|XXXXX\"|g" $pot_tmp_file
# /tx:" -> XXXXX"
sed -i "s|.*/tx:\"|XXXXX\"|g" $pot_tmp_file
# delete empty strings
sed -i '/XXXXX""/d' $pot_tmp_file
# "EOL -> "\nZZZZZ\n
sed -i "s|\"$|\"\nZZZZZ\n|g" $pot_tmp_file
# add property titles
cat $pot_tmp_file >> $pot_file

# delete EOL everywhere
sed -i ':a;N;$!ba;s/\n//g' $pot_file
# add EOL before XXXXX
sed -i "s|XXXXX|\nXXXXX|g" $pot_file
# delete the first string
sed -i -e "1d" $pot_file

# delete untranslatable strings
sed -i '/biggatelogo.gif/d' $pot_file
sed -i '/&dArr;/d' $pot_file
sed -i '/&lArr;/d' $pot_file
sed -i '/&rArr;/d' $pot_file
sed -i '/bigcircuit.gif/d' $pot_file
sed -i '/bigdetails.gif/d' $pot_file
sed -i '/bigiface.gif/d' $pot_file
sed -i '/bigmodule.gif/d' $pot_file
sed -i '/bigtextedit.gif/d' $pot_file
sed -i '/connect_example.gif/d' $pot_file
sed -i '/example_bindings.gif/d' $pot_file
sed -i '/example_name.gif/d' $pot_file
sed -i '/iface.gif/d' $pot_file
sed -i '/makejoint_example.gif/d' $pot_file
sed -i '/modlistfig.gif/d' $pot_file
sed -i '/netprops.gif/d' $pot_file
sed -i '/simulate.gif/d' $pot_file
sed -i '/&lt;---/d' $pot_file
sed -i '/--->/d' $pot_file
sed -i '/|YYYYY""vYYYYY/d' $pot_file
sed -i '/<tutorial-navigation/d' $pot_file

# delete the same strings
sort -u $pot_file |uniq -u > $pot_tmp_file

# XXXXX -> msgid ""EOL
sed -i 's|XXXXX|msgid ""\n|g' $pot_tmp_file
# YYYYY"ZZZZZ -> "ZZZZZ
sed -i 's|YYYYY"ZZZZZ|"ZZZZZ|g' $pot_tmp_file
# ZZZZZ -> EOLmsgstr ""EOL
sed -i 's|ZZZZZ|\nmsgstr ""\n|g' $pot_tmp_file
# YYYYY" -> \n"EOL
sed -i 's|YYYYY"|\\n"\n|g' $pot_tmp_file
# ^"" -> "\n"
sed -i 's|^""|"\\n"|g' $pot_tmp_file

rm -f $pot_file

# add header
echo '# This file is part of TkGate project' >> $pot_file
echo '# Copyright (C) 1987-2015 by Jeffery P. Hansen' >> $pot_file
echo '# Copyright (C) 2015-2018 by Andrey V. Skvortsov' >> $pot_file
echo '# This file is distributed under the same license as the TkGate package.' >> $pot_file
echo '#' >> $pot_file
echo '# ##############################################################################' >> $pot_file
echo '# Generated by manuals2pot script' >> $pot_file
echo '# ##############################################################################' >> $pot_file
echo '#' >> $pot_file
echo '#, fuzzy' >> $pot_file
echo 'msgid ""' >> $pot_file
echo 'msgstr ""' >> $pot_file
echo '"Project-Id-Version: tkgate\n"' >> $pot_file
echo '"Report-Msgid-Bugs-To: \n"' >> $pot_file
echo '"POT-Creation-Date: 2018-12-05 17:04+0300\n"' >> $pot_file
echo '"PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE\n"' >> $pot_file
echo '"Last-Translator: FULL NAME <EMAIL@ADDRESS>\n"' >> $pot_file
echo '"Language-Team: LANGUAGE <LL@li.org>\n"' >> $pot_file
echo '"Language: \n"' >> $pot_file
echo '"MIME-Version: 1.0\n"' >> $pot_file
echo '"Content-Type: text/plain; charset=UTF-8\n"' >> $pot_file
echo '"Content-Transfer-Encoding: 8bit\n"' >> $pot_file
echo '' >> $pot_file

# add from tmp pot file to main pot file
cat $pot_tmp_file >> $pot_file
# delete temporary pot file
rm -f $pot_tmp_file