# find big files in a git storage
# $1 how much to out put

temp=temp_fv4erkjifriu
git verify-pack -v .git/objects/pack/*.idx | sort -k 3 -n | tail -$1 | awk '{print $1" " $3}' > $temp
git rev-list --objects --all | grep "`cat $temp | awk '{print $1}'`" | sed `cat $temp | awk '{print "-e s/" $1 "/" $2 "/g" }'` | sort -k 1 -n | awk '{printf "%10d\t%-30s\n", $1, $2}'
rm $temp

