#!/bin/bash
read -p 'Fichero a comprobar: ' Fichero
ruta=borra/$Fichero
if test -f "$ruta"; then
    echo "El fichero $Fichero existe."
    echo "*****Opciones*****"
    echo "1. Sobreescribir"
    echo "2. Copiar con fecha"
    echo "3. No recuperar"
    read -p 'Que desea hacer: ' opcion
    case $opcion in
        1) 
            echo "Sobreescribiendo archivo"
            cp -f $ruta $Fichero 
        ;;
        2)
            echo "Copiando con fecha"
            cp -f $ruta $Fichero$(date +"%m-%d-%y-%r")
        ;;
        3)
            echo "Cancelando recuperación"
        ;;
        esac
    else echo "El fichero $Fichero no existe"

fi

