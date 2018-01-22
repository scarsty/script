#/usr/bash

for file in */*.png
do
newfile=$1-$file
#newfile=${newfile/__/_}
newfile=${newfile/N_REVERSE__/}
newfile=${newfile/Q_L__/}
newfile=${newfile/N__/}
newfile=${newfile/OK_/}
newfile=${newfile/W_L_BB__/}
newfile=${newfile/W_L_LQ__/}
newfile=${newfile/W_L__/}
newfile=${newfile/A_/}
newfile=${newfile/B_/}
newfile=${newfile/C_/}
newfile=${newfile/D_/}
newfile=${newfile/E_/}
newfile=${newfile/F_/}
newfile=${newfile/\//-}
echo $file '->' $newfile
mv $file $newfile
done
