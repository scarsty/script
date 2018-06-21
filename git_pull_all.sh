
path=`pwd`
for d in `ls`
do
echo $d
echo ------------------------------
cd $d
git pull
cd $path
echo 
done
