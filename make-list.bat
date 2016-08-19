
#train文件夹下面有两个子文件夹0和1，里面保存了两类图片，图片标签形如
#文件名 类别
#以下脚本可以生成这个列表

cd train
ls 0/*.bmp>0.txt
ls 1/*.bmp>1.txt
awk '{print $1 " " 0}' 0.txt > list.txt
awk '{print $1 " " 1}' 1.txt >> list.txt
cd ..
