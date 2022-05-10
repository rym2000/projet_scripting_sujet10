f=`cat arg.txt`
cd "$f"
ls -al | grep '^-' | wc -l > ../stat.txt
ls -l | grep '^d'| wc -l >> ../stat.txt
echo "pour visulaliser la courbe , tapez gnuplot"
echo "puis tapez plot et entre crochets stat.txt"

