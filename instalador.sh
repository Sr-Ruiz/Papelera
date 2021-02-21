echo ""
echo ""
echo -e "\e[31m ####    ##   ##   #####   ######     ##     ####       ##     #####     #####   ###### \e[0m"
echo -e "\e[31m  ##     ###  ##  ##   ##  # ## #    ####     ##       ####     ## ##   ##   ##   ##  ##\e[0m"
echo -e "\e[31m  ##     #### ##  #          ##     ##  ##    ##      ##  ##    ##  ##  ##   ##   ##  ##\e[0m"
echo -e "\e[31m  ##     ## ####   #####     ##     ##  ##    ##      ##  ##    ##  ##  ##   ##   ##### \e[0m"
echo -e "\e[31m  ##     ##  ###       ##    ##     ######    ##   #  ######    ##  ##  ##   ##   ## ## \e[0m"
echo -e "\e[31m  ##     ##   ##  ##   ##    ##     ##  ##    ##  ##  ##  ##    ## ##   ##   ##   ##  ##\e[0m"
echo -e "\e[31m ####    ##   ##   #####    ####    ##  ##   #######  ##  ##   #####     #####   #### ##\e[0m"
echo ""
echo ""

# Crear directorio instalación

echo -e "\e[32m¡Bienvenido al programa de instalación de BORRA!\e[0m"
echo ""
echo -e "\e[32mPor favor inserte el directorio de destino para la instalación (por ejemplo: /home/usuario)\e[0m"
echo ""
read DESTINO
mkdir -p ${DESTINO}

# Crear directorio temporal donde se descargará el repositorio

mkdir -p /tmp/instalador

# Descarga repositorio al directorio temporal y lo descomprime en el directorio de instalación, luego borra el directorio temporal

wget https://github.com/Sr-Ruiz/Papelera/archive/main.tar.gz -P /tmp/instalador
cd /tmp/instalador
sudo tar -xzvf main.tar.gz -C ${DESTINO}
sudo rm -r /tmp/instalador

# Dar permisos de ejecución al programa -borra-

sudo chmod +x ${DESTINO}/Papelera-main/borra

# Crea un enlace en /usr/bin para integrar nuestro programa -borra- en el sistema

sudo ln -s ${DESTINO}/Papelera-main/borra /usr/bin

echo ""
echo -e "\e[101m*******************************************************************************************\e[0m"
echo -e "\e[101m******************************INSTALACIÓN COMPLETADA***************************************\e[0m"
echo -e "\e[101m*******************************************************************************************\e[0m"

# Salir del Script

exit 0
