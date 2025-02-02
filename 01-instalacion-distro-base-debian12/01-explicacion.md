# Objetivo: orientar como tenemos que hacer la instalación

### Tenemos que leer el README para saber que solo voy a poner los Conceptos Estratégicos
### 1. Instalación

    - Descargar "imagen de Debian" = esto al principio no va a ser facil ademas que la pagina de Debian no me parece "estetica e intuitiva" y ademas vamos
    - a tener que descargar seguramente un "netinstal"
        - netinstal = instalacion red = quiere decir que varias herramientas las va a instalar CON INTERNET por lo cual siempre es recomendable hacer la
        - instalacion conectado a internet por cable RJ45

    - Descargar Virtual Box = tambien puede ser dificil al principio pero el concepto es este, luego existen muchos tutoriales como hacerlo paso a paso

    - Importante = podemos directamente instalar Debian en nuestra maquina sin usar VirtualBox pero para eso hay que buscar informacion de:
        - Comprar pendrive (ojo con el tamaño)
        - Instalar Rufus o Balena Etcher (para poner la imagen Debian en el pendrive)
        - Fundamental saber sobre nuestra BIOS (que esto ya es un mundo diferente) (que me parece demasiado dificil si no sabemos siquiera 
        - como hacerlo de forma virtual


    - Descargar Guest Additions = algunos recomiendan hacerlo, yo recomiendo porque VAMOS A PODER ENTRAR Y SALIR DE DEBIAN Y VIRTUAL BOX FACILMENTE

    - Hay que pensar que vamos a estar dentro de un programa que virtualiza otro Sistema Operativo dentro de nuestra Maquina, por lo cual no va a ser simple
    - compartir o movernos de un lado a otro y esta extension nos permite hacerlo

    - Crear "Nueva" en VirtualBox = tenemos que crear un lugar para el Nuevo Sistema Operativo, hay varias maneras de hacerlo pero yo recomiendo buscar un
    - tutorial donde primero expliquen como crear ese espacio y luego mas tarde ingresar la "imagen"

    - Poner imagen Debian y en configuracion y luego de aceptar dar en "Iniciar"

    - Instalar "forma guiada recomendada" = existen muchos tutoriales que explican porque tenemos que hacer varias particiones para el SO.
        - Esta forma guiada nos va a instalar todo en "/" o "raiz" que al principio creo que es lo mas conveniente para aprender

    - Durante la instalacion tenemos que poner de forma clara: 
        - poner usuario y contraseña 
        - poner contraseña de root = extenso pero facil de recordar
        - instalar ssh ( tambien puede decir openssh )
        - al principio recomiendo instalar LXDE y UTILIDADES DE DEBIAN
    
    - Reiniciar si pide hacerlo

    - Folder siguiente
