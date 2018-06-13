#/usr/bash

for file in `ls $2`
do

cp -p -u $1/$file $2/.

done
