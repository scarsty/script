#/usr/bash
IFS=$(echo -en "\n\b")
for file in `/usr/bin/find . -name "*.png"`
do
newfile=$file
newfile=${newfile/.\//}
newfile=${newfile//\//-}
newfile=${newfile// /}
if [ $1 -ne "0" ]; then
newfile=$1-$newfile
fi
echo $file '->' $newfile
mv "$file" "$newfile"
done
