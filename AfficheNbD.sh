f=`cat arg.txt`
cd "$f"
ls -al | grep '^d' | wc -l
