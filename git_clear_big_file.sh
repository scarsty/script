
# remove file(s) from git history
# $1 file(s) name
# $2 1 push after removing
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch $1" --prune-empty --tag-name-filter cat -- --all
if [ $2 == 1 ]; then
rm -rf .git/refs/original/ 
git reflog expire --expire=now --all
git gc --prune=now
git gc --aggressive --prune=now
#git push origin master --force
git -c diff.mnemonicprefix=false -c core.quotepath=false push -v -f --tags origin master:master
fi
