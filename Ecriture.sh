f=`cat arg.txt`
ls -l  | grep "$f" | awk '{print $1}'>ecrit.txt
f2=`cat ecrit.txt`
echo "$f2" | tr -cd 'w' | wc -c >count_w.txt
w_c=`cat count_w.txt`
if [ "$w_c" -eq 0 ]; then
echo "Personne n'a le droit d'ecriture"
elif [ "$w_c" -eq 1 ]; then
echo "Le propriétaire seulement a le droit d ecriture"
elif [ "$w_c" -eq 2 ]; then
echo "Le propriétaire et son groupe seulement a le droit d ecriture"
elif [ "$w_c" -eq 3 ]; then
echo "Le propriétaire et son groupe et les autres a le droit d ecriture"
fi
