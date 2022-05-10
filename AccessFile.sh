f=`cat arg.txt`
ls -l  | grep "$f" | awk '{print $9,$1}'

