# Instacion de Portainer con SSH

#### Portainer nos permite crear contenedores docker desde una interfaz web. Esto quiere decir que ahora se entiende porque este contenedor tenemos que crearlo con SSH porque es el 1er contenedor que tenemos que crear desde la terminal

#### Una vez terminado vamos a poder entrar a la IP FIJA que pusimos + el puerto (192.168.1.16:9000) y vamos a poder ingresar

#### Apenas entramos cambiar usuario y contraseña. Estamos en una red interna, sin acceso desde internet, sin embargo es una buena práctica acostumbrarnos a poner contraseñas seguras 

version: '3'

services:
  portainer:
    image: portainer/portainer-ce:latest
    container_name: portainer
    restart: unless-stopped
    security_opt:
      - no-new-privileges:true
    volumes:
      - /etc/localtime:/etc/localtime:ro
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./portainer-data:/data
    ports:
      - 9000:9000


#### Recordar que estamos poniendo concepto estratégicos por lo cual no pongo todos los pasos cronologicamente sino que pongo los que me parecen que son fundamentales para entender el concepto. Luego de crear el docker compose de portainer y antes de lanzarlo mirar bien tutoriales sobre como hacerlo. Porque? Porque es fundamental poner "-d" para que no nos ocupe la terminal sin poder dejarnos salir de la misma.
