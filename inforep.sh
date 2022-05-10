#Corps du script
if [ $# -eq 0 ]; then #Vérification de nombre de paramétres
sh script_no_option.sh #fonction_usage
elif [ $1 == '-h' ]; then
sh script_help.sh
elif [ $1 == '-g' ]; then
sh yad.sh
elif [ $1 == '-m' ]; then
echo -ne "
MAIN MENU
This is the textual version of the script please choose an option :
Press any button to continue"

read -r opt
echo "donnez le fichier ou le repertoire"
read -r FILE
echo "$FILE" > arg.txt
if [ -d "$FILE" ]; then
echo " Choose a functionality:  "
options=("-help" "-AfficheNbF" "-AfficheNbD" "-TypeFiles" "-AccessFiles" "-PropFiles" "-Stat" "Quit")
select opt in "${options[@]}"
do
case $opt in 

"-help") 
sh script_help.sh
;;

"-AfficheNbF") 
sh AfficheNbF.sh
;;

"-AfficheNbD")
sh AfficheNbD.sh
;;

"-TypeFiles") 
sh TypeFiles.sh
;;

"-AccessFiles") 
sh AccessFiles.sh
;;

"-PropFiles") 
sh PropFiles.sh
;;

"-Stat") 
sh Stat.sh
;;

"Quit")


break
;;

#commande inexistante
*) echo "ERROR la commande n'est pas valide"
esac
done
else
echo " Choose a functionality:  "
options=("-help"  "-TypeFile" "-AccessFile" "-PropFile" "-Ecriture" "Quit")
select opt in "${options[@]}"
do
case $opt in 

"-help") 
sh script_help.sh
;;

"-TypeFile") 
sh TypeFile.sh
;;

"-AccessFile")
sh AccessFile.sh
;;

"-PropFile") 
sh PropFile.sh
;;

"-Ecriture") 
sh Ecriture.sh
;;

"Quit")

break
;;

#commande inexistante
*) echo "ERROR la commande n'est pas valide"
esac
done
fi
elif [ $1 == '-v' ]; then
sh version.sh
fi
