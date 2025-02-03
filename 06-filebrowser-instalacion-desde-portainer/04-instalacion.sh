Docker-Compose de Filebrowser:

version: "3"

services:

  filebrowser:
    image: hurlenko/filebrowser:latest
    environment:
      - UID=1000
      - GID=1000
      - TZ=America/Montevideo
    ports:
      - "1000:8080"
    volumes:
      - /:/data
      - ./fb-config:/config
    restart: unless-stopped
