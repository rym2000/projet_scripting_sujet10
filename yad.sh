#!/bin/bash

 
yad \
--title "info sur rep" \
--image="back.jpg" \
--button=gtk-quit:1 \
--button="AfficheNbF":2 \
--button="AfficheNbD":3 \
--button="TypeFiles":4 \
--button="-v":5 \
--button="-help":6 \
--button="AccessFiles":7 \
--button="-PropFiles":8 \
--button="-stat":9 \
--button="-TypeFile ":10 \
--button="-AccessFile":11 \
--button="-PropFile":12 \
--button="-Ecriture":13 \

button=$?

if [[ $button -eq 1 ]]
then
      exit
  elif [[ $button -eq 2 ]]
  then
   ./AfficheNbF.sh
  elif [[ $button -eq 3 ]]
  then
   ./AfficheNbD.sh 
  elif [[ $button -eq 4 ]]
  then
   ./TypeFiles.sh 
  elif [[ $button -eq 5 ]]
  then
   ./version.sh 
  elif [[ $button -eq 6 ]]
  then
  ./script_help.sh  
  elif [[ $button -eq 7 ]]
  then
  ./AccessFiles.sh
  elif [[ $button -eq 8 ]]
  then
  ./PropFiles.sh
  elif [[ $button -eq 9 ]]
    then
  ./Stat.sh 
  elif [[ $button -eq 10 ]]
    then
  ./TypeFile.sh
  elif [[ $button -eq 11 ]]
    then
  ./AccessFile.sh
  elif [[ $button -eq 12 ]]
    then
  ./PropFile.sh
  elif [[ $button -eq 13 ]]
    then
  ./Ecriture.sh
   
     fi
    









