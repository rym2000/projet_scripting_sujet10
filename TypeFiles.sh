f=`cat arg.txt`
cd "$f"
find . -type f | rev | cut -d. -f1 | rev  | tr '[:upper:]' '[:lower:]' | sort | uniq --count | sort -rn #y5arej les extensions des fichiers

