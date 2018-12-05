
# $1: dll name, without suffix
# $2: dll.a name, full path with suffix
 
echo LIBRARY $1.dll > $1.def
echo EXPORTS >> $1.def
VSPATH="/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin"
FUNCS=`nm $2 | grep "I __imp_" | sed "s/.* I __imp_//"`

COUNT=1
for func in $FUNCS; do
  echo $func @$COUNT >> $1.def
  #echo $func >> $1.def
  COUNT=`echo $COUNT+1|bc -l`
done

rm $1.lib
rm $1.exp
"$VSPATH/lib" //machine:X64 //def:$1.def
#dlltool -d $1.def -l $1.lib -D $1.dll
