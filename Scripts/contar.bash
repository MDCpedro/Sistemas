#!/bin/bash

# Comprueba que se proporciona un argumento
if [ $# -ne 1 ]; then
    echo "Debes introducir un fichero como argumento."
    exit 1
fi

# Lee el primer argumento, que debería ser un fichero
fichero=$1

# Verifica que el fichero existe
if [ ! -f "$fichero" ]; then
    echo "El fichero $fichero no existe."
    exit 1
fi

# Cuenta el número de líneas en el fichero
numero_lineas=$(wc -l < "$fichero")

echo "El número de líneas es $numero_lineas"
