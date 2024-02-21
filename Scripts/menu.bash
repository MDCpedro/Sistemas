#!/bin/bash
mostrar_nombre_pc() {
    echo "El nombre de la computadora es: $HOSTNAME"
}

mostrar_usuario() {
    echo "El usuario actual es: $USER"
}

mostrar_ip() {
    echo "La dirección IP de la computadora es: $(hostname -I)"
}

mostrar_menu() {
    echo "-------------------------------------------"
    echo "Menú:"
    echo "1. Mostrar nombre de la computadora"
    echo "2. Mostrar usuario actual"
    echo "3. Mostrar dirección IP de la computadora"
    echo "4. Salir"
    echo "Por favor seleccione una opción: "
    echo "-------------------------------------------"
    read option

    case $option in
        1) mostrar_nombre_pc ;;
        2) mostrar_usuario ;;
        3) mostrar_ip ;;
        4) exit ;;
        *) echo "Por favor seleccione una opción válida." ;;
    esac
}

while true; do
    mostrar_menu
done