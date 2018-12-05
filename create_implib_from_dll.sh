
# $1: dll name, without suffix
 
echo LIBRARY $1.dll > $1.def
echo EXPORTS >> $1.def
NUM=`"/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin/dumpbin.exe" //exports $1.dll | grep "number of functions" | awk '{print $1}'`
NUM2=`echo $NUM +2 | bc -l`
FUNCS=`"/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin/dumpbin.exe" //exports $1.dll | grep "ordinal hint" -A $NUM2 | awk '{if(NR>2)print $4}'`
echo $NUM functions.

COUNT=1
for func in $FUNCS; do
  echo $func @$COUNT >> $1.def
  #echo $func >> $1.def
  COUNT=`echo $COUNT+1|bc -l`
done

rm $1.lib
rm $1.exp
"/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin/lib.exe" //machine:X64 //def:$1.def

