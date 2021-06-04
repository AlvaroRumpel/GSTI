#!/bin/bash

tamanho=`cat Dados.txt | wc -l`
d=`cat Dados.txt | tail -n1 | head -n 1`
dia=`echo $d | cut -c 1-2`
echo $dia
