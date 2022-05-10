f=`cat arg.txt`
find . -type f | grep "$f" | rev | cut -d. -f1 | rev  | tr '[:upper:]' '[:lower:]' | sort | uniq --count | sort -rn
