#!/bin/bash
#Crear usuario
read -p 'Nombre de usuario: ' nombre
read -p 'Contraseña' password
echo $nombre 
echo $password

useradd -p $password $nombre
mkdir /var/www/$nombre/{web,blog,files}
chown root:root /var/www/$nombre
chown $nombre:$nombre /var/www/$nombre/*
chmod -R 755 /var/www/ 


