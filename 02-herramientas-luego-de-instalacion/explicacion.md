# Este texto tiene como objetivo orientar que tenemos que instalar luego de la Instalacion

## Tenemos que instalar lo basico para movernos por la terminal sin problemas

Aca voy a poner los conceptos fundamentales de porque tenemos que instalar ciertas herramientas

### 1. Actualizar el sistema

    - Folder anterior

### 2. Instalar ciertas herramientas que nos facilita trabajar y movernos desde la terminal

    - kitty     Una terminal que nos permite crear pestañas facil y rapido que luego veremos que es muy potente (sin entorno 
                grafico no se puede usar)
    - tmux      "Crea mas terminales dentro de una"     esta es la que quizas vayamos a usar si no tenemos entorno grafico
                "la idea es no perder la conexion de por lo menos 1 terminal"

                Puede parecer estresante hacerlo al principio por eso considero instalarnos herramientas como "tree" "tmux"

    - tmux      "poner este comando en la terminal": apretar "CRTL + b" inmediantemente despues "CRTL + %" 
                esto nos permite dividir la terminal en 2, nos movemos con: "CRTL + b" inmediatamente despues "flecha derecha" y "flecha izquierda"
                
                es importante saber como moverse por la terminal, pero si tenemos pocos o nulos conocimientos recomiendo fundamental instalar tmux

                en este punto hay que saber que las herramientas (son comandos y aplicaciones) instaladas son tambien "comandos que se pueden usar en la terminal", y que ellos tienen "OPCIONES" "MODIFICADORES"

    - neofetch  #poner esto en la terminal ejecutamos neofetch. que es una herramienta, y tambien es una aplicacion, y tambien es 
                un comando. A su vez tiene "OPCIONES" y "MODIFICADORES" que pueden ser usados para discriminar datos que nos de esta herramienta

    - neofetch | grep "OS"          #este comando, app, herramienta, le pusimos varios modificadores que hacen que discrimine la 
                                    salida que nos mostrara: 
                                        "solo el sistema operativo que tenemos"
                                    
                #NOTA: el concepto es igual en todos los comandos, herramientas, aplicaciones, podemos usarlos a conveniencia
                                                            
    - man neofetch      #herramienta "man" + cualquier herramienta nos da el "manual" de como usar esa herramienta, es poderosa pero 
                        un poco dificil de entenderla
            
### 3. Configurando IP , SSH 

    - Si hacemos de una PC un servidor significa que tenemos que ponerle una IP FIJA o ESTATICA, y para esto vamos a tener que 
    modificar los archivos relacionados a DHCP (Dinamic Host Configuration Protocol, Protocolo de configuracion dinamica de Host, es
    decir "REGLAS, ORDENES, eso significa un protocolo, significa que existen Organizaciones que ordenaron la forma de hacer algo")

    - Por lo tanto hay que cambiarlo, pero tambien tenemos que tener en cuenta que vamos a tocar partes fundamentales que al principio
    cuestan entender (Por eso creo que yo que es importante hacerlo en maquina virtual y con entorno grafico al principio)

    - Ademas tenemos que recordar que las distros suelen variar la forma en que se hacen estos cambios y tenemos que tener en cuenta
    que a la red muchas veces no tenemos un cable RJ45 que nos de internet cableada, por lo que puede ser mas delicado estos cambios

    - Aun asi vamos a hacer esto de la mejor forma que yo pueda explicar en una Distro Debian:

    - ip route (muestra ip router = default via, muestra ip de la pc, muestra si estamos conectados por cable o wifi, eth o wlx)
    - ip       (muestra los "dev" de la pc)

    
    



