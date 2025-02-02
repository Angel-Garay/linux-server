### 3. Configurando IP Estática o Fija con Netplan

    - Si hacemos de una PC un servidor significa que tenemos que ponerle una IP FIJA o ESTATICA, y para esto vamos a tener que 
    modificar los archivos relacionados a DHCP (Dinamic Host Configuration Protocol, Protocolo de configuracion dinamica de Host, es
    decir "REGLAS, ORDENES, eso significa un protocolo, significa que existen Organizaciones que ordenaron la forma de hacer algo")

    - Por lo tanto hay que cambiarlo, porque el servidor se tiene que quedar fijo en un lugar, incluso sin apagarse.
    
    - También tenemos hay que tener cuidado porque vamos a modificar partes fundamentales que al principio cuestan entender 
    (Por eso creo que yo que es importante hacerlo en maquina virtual y con entorno grafico al principio)

    - Ademas tenemos que recordar que las distros suelen variar la forma en que se hacen estos cambios, por lo que puede ser mas delicado estos cambios y complicado de encontrar un tutorial 100% exacto con lo que necesitamos.

    - Fundamental a partir de ahora el servidor o tiene cable o lo dejamos por wifi, pero ya definirlo porque las configuraciones dependen de esto

    - Aun asi vamos a hacer esto de la mejor forma que yo pueda explicar en una Distro Debian: "vamos a configurar NETPLAN"

    - ip route       (muestra ip router = default via, muestra ip de la pc, muestra si estamos conectados por cable o wifi, eth o wlx)
    - ip address     (muestra identidades en este caso la identidad del dispositivo que nos da internet)

    ip route
        default via "IP DEL ROUTER" dev "wlx0" proto "dhcp" metric 600 
        "IP PRIVADA ACTUAL" /24 dev "wlx0" proto kernel scope link src ...
        
        - Lo que puse entre parentesis cambia pero es lo que tenemos que mirar
        - "wlx0" sale cuando el servidor tiene WIFI, sino saldria algo asi "enp1s0"
        - "dhcp" es lo que tenemos que cambiar por "static"
        - "Ip del router" = default via es lo que tenemos que saber para cambiar configuraciones
        - "Ip privada actual" = yo lo que hago es poner la misma y luego reiniciar para que no haya problemas

    - Cambiando NETPLAN (nunca copiar y pegar siempre escribirlo)

        - Asi es probable que se vea el archivo
            # Let NetworkManager manage all devices on this system                 
            network:                                                               
                version: 2                                                           
                renderer: NetworkManager   

        - Tenemos que dejarlo asi:

        # Let NetworkManager manage all devices on this system
        #network:                                                               
        #version: 2                                                           
        #renderer: NetworkManager                                             
                                                                        
        network:                                                                
            version: 2                                                            
            renderer: networkd                                                    
            wifis:                                                              
                wlo:                                                               
                dhcp4: no                                                         
                addresses:                                                        
                    - 192.168.1.16/24                                             
                routes:                                                           
                    - to: default                                                   
                    via: 192.168.1.1                                            
                nameservers:                                                      
                    addresses:                                                      
                    - 8.8.8.8                                                     
                    - 8.8.4.4                                                     
                access-points:                                                    
                    "NOMBRE-DE-LA-RED":                                                    
                    password: "CONTRASEÑA-SEGURA"    