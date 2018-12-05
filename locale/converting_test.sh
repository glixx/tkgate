#/bin/sh

# This script allows to catch errors after converting from PO into messages
# and it helps to see translators' errors
# You need gettext installed

result_file="converting_test.diff"
rm -f $result_file

for lang in `ls -1|grep -v pot|grep -v tcl |grep -v sh|cut -d "/" --fields=1|grep -v en`
do
./tkgatemsg2po.tcl -m en/messages -l $lang/messages -pot 1.pot -po $lang/"$lang"1.po
msguniq "$lang/$lang"1.po -o "$lang/$lang"3.po
msguniq "$lang/$lang".po -o "$lang/$lang"2.po
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
rm -f 1.pot
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
