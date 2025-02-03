# Instalar Filebrowser desde Portainer

#### Conceptos: porque es importante Portainer y porque es importante Filebroser:

#### Todos estos servicios que estamos instalando lo hacemos al servidor (al unico que tenemos), y tenemos que pensar en que son servicios que estan siendo usados "corridos" como si estuvieran totalmente aislados uno del otro. Esto quiere decir cada contenedor docker compose se instala con "su imagen sola y la que necesita para ser usada" nada más.
#### Filebrowser instala una "imagen con su Sistema Operativo" minimo para ser usado y esto hace que tenemos que pensar que ya le "instalamos a nuestro servidor 2 imagenes: la de portainer y la de filebrowser" 
#### Filebrowser nos permite ver las carpetas de nuestro servidor desde nuestra red local lo que nos permite "compartir nuestros archivos con las personas que queremos, nuestra familia, siempre y cuando esten en nuestra misma red"

    - 192.168.1.16:1000
    - Si ponemos esto en el navegador vamos a poder acceder a Filebrowser
    - Si o si cambiar usuario y contraseña por unas seguras.