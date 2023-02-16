# !/bin/bash
# Autor: Esteban Valdez 
# Script para imprimir usuario de git

echo "--- CONSULTA DE USUARIO EN GITHUB ---"
#read -p "Ingrese su user de Github: " GITHUB_USER       #solicita usuario
GITHUB_USER="Ennox2"
INFO=$(curl -s https://api.github.com/users/$GITHUB_USER) #consulta

#Usando expresiones regulares para identificar los datos en el json
ID=$(echo $INFO | grep -o '"id": [0-9]*' |  grep -o '[0-9]*')
CREADA=$(echo $INFO | grep -o '"created_at": "[^"]*"' |  cut -d '"' -f 4 | sed 's/T/ /' | sed 's/Z/ /')

#imprime mensaje de salida con los datos
echo "Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el: $CREADA."


# Crear el archivo de registro en /tmp/<fecha>/saludos.log
DIRECCION="tmp/$(date +%Y-%m-%d)"
LOG_FILE="$DIRECCION/saludos.log"
mkdir -p $DIRECCION
echo "Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el: $CREADA." >> $LOG_FILE