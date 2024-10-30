#!/bin/bash

# Imprime un mensaje en la terminal
echo "Hola, mundo!"

# Define una variable
nombre="Carlos"

# Usa la variable
echo "Hola, $nombre"

# Realiza una operación matemática
num1=5
num2=10
suma=$((num1 + num2))
echo "La suma de $num1 y $num2 es $suma"

# Uso de condicionales
if [ $num1 -lt $num2 ]; then
    echo "$num1 es menor que $num2"
else
    echo "$num1 es mayor o igual a $num2"
fi

# Bucle for
for i in {1..5}; do
    echo "Iteración $i"
done

