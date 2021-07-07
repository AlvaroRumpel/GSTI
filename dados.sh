#!/bin/bash

while [ 1 ]; do
	wget http://localhost:3333
	dia=`cat index.html | tail -n1 | head -1 | cut -c 1-3`
    echo $dia
    if [ "$dia" = "Qua" ] || [ "$dia" = "Qui" ] || [ "$dia" = "Ter" ]
    then
        dia=`cat index.html | tail -n1 | head -1 | cut -c 1-12`
        horario=`cat index.html | tail -n1 | head -1 | cut -c 14-21`
        nivelRio=`cat index.html | tail -n1 | head -1 | cut -c 23`
    elif [ "$dia" = "Seg" ]    
    then
        dia=`cat index.html | tail -n1 | head -1 | cut -c 1-13`
        horario=`cat index.html | tail -n1 | head -1 | cut -c 15-22`
        nivelRio=`cat index.html | tail -n1 | head -1 | cut -c 24`
    elif [ "$dia" = "Sex" ]
    then
        dia=`cat index.html | tail -n1 | head -1 | cut -c 1-11`
        horario=`cat index.html | tail -n1 | head -1 | cut -c 13-20`
        nivelRio=`cat index.html | tail -n1 | head -1 | cut -c 22`
    elif [ "$dia" = "Sá" ]    
    then
        dia=`cat index.html | tail -n1 | head -1 | cut -c 1-7`
        horario=`cat index.html | tail -n1 | head -1 | cut -c 9-16`
        nivelRio=`cat index.html | tail -n1 | head -1 | cut -c 18`
    elif [ "$dia" = "Dom" ]    
    then
        dia=`cat index.html | tail -n1 | head -1 | cut -c 1-7`
        horario=`cat index.html | tail -n1 | head -1 | cut -c 9-16`
        nivelRio=`cat index.html | tail -n1 | head -1 | cut -c 18`    
    fi

	if [ "$nivelRio" = "2" ] || [ "$nivelRio" = "3" ]
	then
		echo "$dia,$horario,$nivelRio,---ALERT---" >> relatorio.csv
	else
		echo "$dia,$horario,$nivelRio" >> relatorio.csv
	fi

	rm index.html

	sleep 5
done