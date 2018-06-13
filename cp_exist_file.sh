#/usr/bash

cd $1

for file in `ls`
do

cp -p $WILL_PATH/src/$file .

done
