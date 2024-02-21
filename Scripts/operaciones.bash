#!/bin/bash
echo "Escribe el primer número:"
read num1

echo "Escribe el segundo número:"
read num2

suma=$((num1+num2))
resta=$((num1 - num2))
multiplicacion=$((num1 * num2))
division=$((num1 / num2))
modulo=$((num1 % num2))
if [ $num1 -eq $num2 ]; then
    comparacion="igual"
elif [ $num1 -gt $num2 ]; then
    comparacion="mayor que el segundo"
else
    comparacion="menor que el segundo"
fi

echo "La suma de $num1 y $num2 es: $suma"
echo "La resta de $num1 menos $num2 es: $resta"
echo "La multiplicación de $num1 y $num2 es: $multiplicacion"
echo "La división de $num1 entre $num2 es: $division"
echo "El residuo de la división de $num1 entre $num2 es: $modulo"
echo "El primer número es $comparacion"