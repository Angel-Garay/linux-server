#!/bin/bash

sudo apt update && sudo apt upgrade -y                          #tener en cuenta que algunos no permiten esto, si no permite sudo
                                                                #hay que fijarse como podemos ejecutar permisos de SUPERUSUARIO 

sudo apt install htop top btop tree kitty tmux neofetch -y      #es importante saber como moverse por la terminal, pero si tenemos pocos o nulos conocimientos recomiendo fundamental instalar kitty y saber que con "CRTL + SHIFT + t" nos va a abrir otra "pestaña de terminal" y para movernos entre pestañas es con: CRTL + TAB
                                                                #tmux quizas al principio sirva mas para movernos en la terminal si es que no tenemos entorno grafico, la idea es no perder la conexion de por lo menos 1 terminal
                                                                #en este punto hay que saber que las herramientas instaladas son tambien "comandos que se pueden usar en la terminal", y que ellos tienen "OPCIONES" "MODIFICADORES"

neofetch                                                        #asi solo nos da mucho info de nuestra maquina, y esto es una herramienta, y tambien es una aplicacion, y tambien es un comando. A su vez tiene "OPCIONES" "MODIFICADORES" que pueden ser usados para discriminar datos que nos de esta herramienta (NOTA: importante buscar porque todo en linux es un archivo)

neofetch | grep "OS"                                            #este comando, app, herramienta, le pusimos varios modificadores que hacen que discrimine la salida que nos mostrara: "solo el sistema operativo que tenemos"
                                                                #el concepto es igual en todos los comandos, herramientas, aplicaciones, podemos usarlos a conveniencia
                                                            
man neofetch                                                    #herramienta "man" + cualquier herramienta nos da el "manual" de como usar esa herramienta, es poderosa pero un poco dificil de entenderla

tree 

tree -d                                                         #lista solo los directorios

sudo apt install curl wget net-tools                            #algunas ya vienen instaladas, ademas net-tools supuestamente ya quedo viejo para usarlo pero es comun todavia encontrar tutoriales de como usarlo y por eso es que lo pongo igual
                                                                #ahora parece que se usa "ip" con muchas de sus variantes

