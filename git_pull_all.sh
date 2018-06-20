
path=`pwd`
for d in `ls`
do
cd $d
git pull
cd $path
done
