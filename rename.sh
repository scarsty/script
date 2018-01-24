#/usr/bash

for file in `/usr/bin/find . -name *.png`
do
newfile=${newfile/.\//}
newfile=${newfile//\//-}
newfile=$1-$newfile
echo $file '->' $newfile
mv $file $newfile
done
