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