#!/bin/bash
#Crear usuario

read -p 'Nombre de usuario: ' nombre
read -p 'Contraseña' password
echo $nombre
echo $password

if [ -d /var/www/$nombre ]; then
	echo 'el usuario' $nombre 'existe'
else
	useradd -p $password $nombre
	mkdir /var/www/$nombre/{web,blog,files}
	chown root:root /var/www/$nombre
	chown $nombre:$nombre /var/www/$nombre/*
	chmod -R 755 /var/www/
fi

