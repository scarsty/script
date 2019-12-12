#/usr/bash

echo "useage:"
echo "  no args   Move all files in sub paths here"
echo "  1         Use current date as prefix"
echo "  2 prefix  Assign a prefix"

IFS=$(echo -en "\n\b")
for file in `/usr/bin/find . -name "*.*"`
do
    newfile=$file
    newfile=${newfile/.\//}
    newfile=${newfile//\//_}
    newfile=${newfile// /}
    if [ $# -ge 1  ]; then
        if [ $1 -eq "1" ]; then
            DATE=`/usr/bin/date +'%Y%m%d'`
            newfile=$DATE-$newfile
        fi
        if [ $1 -eq "2" ]; then
            newfile=$2-$newfile
        fi
    fi
    echo $file '->' $newfile
    mv "$file" "$newfile"
done
