f=`cat arg.txt`
cd "$f"
ls -al | grep '^-' | wc -l

