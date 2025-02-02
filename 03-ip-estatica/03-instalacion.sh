#!/bin/bash

- Asi se tendria que ver el ARCHIVO NETPLAN: ojo que es con YAML
- Si no se sabe lo que es YAML, minimamente buscar en internet y lo "delicado" que es su sintaxis
- En la terminal ir a /etc/netplan y abrir el archivo con NANO y SUDO
- Importante nunca copiar y pegar siempre escribir estos archivos

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