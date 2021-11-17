#!/bin/bash
#borrar usuario

read -p 'nombre de usuario: ' nombre

if [ -d /var/www/$nombre ]; then
	userdel -r $nombre
	rm -r /var/www/$nombre
	echo 'elimino al usuario ' $nombre 'y su carpeta'
else
	echo "el usuario no existe"
fi






