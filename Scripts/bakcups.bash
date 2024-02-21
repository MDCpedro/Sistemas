#!/bin/bash
echo "Ingresa 4 rutas absolutas para hacer una copia de seguridad:"

declare -a paths

for (( i=0; i<4; i++ )); do
    echo "Ruta $((i+1)):"
    read path
    paths[$i]="$path"
done

backup_dir="$(date +"%d-%m-%Y")"
mkdir "$backup_dir"

for path in "${paths[@]}"; do
    cp -r "$path" "$backup_dir"
done

echo "Copia de seguridad completada en el directorio $backup_dir."
