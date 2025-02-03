# Docker-Compose de Samba:
# NOTA: siempre es importante ver como se puede poner contraseñas NO EN TEXTO CLARO, SINO COMO VARIABLES
# NOTA2: aca yo pongo contraseñas en texto claro por modo de ejemplo, para empezar quizas esta bien, pero tambien hay que buscar como agregar seguridad a estas configuraciones

version: '3.8'

services:
  samba:
    image: dperson/samba
    restart: unless-stopped
    container_name: samba
    ports:
      - "137:137/udp"
      - "138:138/udp"
      - "139:139/tcp"
      - "445:445/tcp"
    environment:
      - USERID=1000                                                             # UID del usuario
      - GROUPID=1000                                                            # GID del grupo
      - TZ=Etc/UTC                                                              # Zona horaria
    volumes:
      - /mnt/usb/usuario:/mnt/usb/emm                                           #cambiar el nombre de usuario
    command: '-u "usuario;contraseña" -s "usuario;/mnt/usb/usuario;yes;no;no;usuario"'   #cambiar usuario = tu nombre de usuario, tambien la parte que dice contraseña = poner una contraseña segura
