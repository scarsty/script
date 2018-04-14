#/usr/bash
IFS=$(echo -en "\n\b")
for file in `/usr/bin/find . -name "*.png"`
do
    newfile=$file
    newfile=${newfile/.\//}
    newfile=${newfile//\//-}
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
