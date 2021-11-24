#!/bin/bash 
#Crear usuario
clear

	CREAR=Crear 
	MODIF=Modificar
	BORRAR=Borrar

	echo "1. Crear usuario"
	echo "2. Modificar usuario"
	echo "3. Listar usuarios"
	echo "4. Borrar usuario"	
	
	read -p "Seleccione una opcion: " opcion
	
	if [ 1 -eq $opcion ]; then
	    echo "Crear usuario"
	elif [ 2 -eq $opcion ]; then
	    echo "Modificar usuario"
	elif [ 3 -eq $opcion ]; then
	    echo "Listar usuario"
	elif [ 4 -eq $opcion ]; then
	    echo "Borrar usuario"
	else 
	    echo salir
	fi

#wordpress
# Email to send a notification when a backup is done
wp_email="youremail@domain.com"
# Send mail to confirm that everything has gone as expected
echo 'Backup for your site has been completed' | mail -s "Wordpress backup successfully completed" $wp_email
