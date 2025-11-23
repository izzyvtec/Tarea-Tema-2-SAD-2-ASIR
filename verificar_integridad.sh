#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: debes indicar un archivo."
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: el archivo '$1' no existe o no se encuentra."
    exit 1
fi

echo "Generando hash MD5 para '$1'...."
echo "MD5:"
md5sum "$1"

echo "Generando hash SHA-256 para '$1'...."
echo "SHA-256:"
sha256sum "$1"

echo "Generando hash SHA-512 para '$1'...."
echo "SHA-512:"
sha512sum "$1"

if [ -n "$2" ]; then
    echo "--- INICIANDO VERIFICACIÓN DE INTEGRIDAD (SHA-256)"
    hash_generado=$(sha256sum "$1" | awk '{print $1}')
    hash_conocido="$2"
    if [ "$hash_generado" == "$2" ]; then
        echo "Verificación exitosa. ¡El archivo no ha sido alterado!"
       else
        echo "ERROR: ¡La integridad del archivo está comprometida!"
	    echo "Hash conocido: $hash_conocido"
	    echo "Hash Generado: $hash_generado"
        exit 2
    fi
fi


