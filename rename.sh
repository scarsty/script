#/usr/bash
IFS=$(echo -en "\n\b")
for file in `/usr/bin/find . -name "*.png"`
do
newfile=$file
newfile=${newfile/.\//}
newfile=${newfile//\//-}
newfile=${newfile// /}
newfile=$1-$newfile
echo $file '->' $newfile
mv "$file" "$newfile"
done
