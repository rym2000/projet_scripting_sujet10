f=`cat arg.txt`
cd "$f"
ls -l  | awk '{print $9,$3}'

