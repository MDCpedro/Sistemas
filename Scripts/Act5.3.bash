#!/bin/bash

mkdir -p result

inpares=0
pares=0

for i in {1..100}; do
    rand_num=$((RANDOM%100))

    if (( rand_num % 2 == 0)); then
        echo $rand_num >> result/even.dat
        ((pares++ ))
    else 
        echo $rand_num >> result/odd.dat
        (( inpares++))
    fi
done

if ((pares > inpares )); then
    echo "Pares.dat contiene mas numeros que Inpares.dat"
elif ((inpares > pares )); then
    echo "Inpares.dat contiene mas numeros que Pares.dat"
else
    echo "Pares.dat y Inpares.dat contienen la misma cantidad de numeros"
fi