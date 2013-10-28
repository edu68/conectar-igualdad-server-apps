conectar-igualdad-server-apps
=============================

Instalador de aplicaciones para el servidor de aplicaciones del plan
Conectar Igualdad.

La idea del CD es que el administrador del servidor de aplicaciones de CI pueda instalar las apps para la intranet, sin necesidad de tener que instalar ningún
paquete en la virtual donde se ejecuta el instalador (ya que no tiene permisos).

Este instalador lo realice junto a la Cooperativa de Trabajo Devecoop Ltda.

En el CD que se va a generar, hay 2 documentos. uno es la guia de instalación, y el otro son los datos de acceso a cada aplicación.


Aplicaciones:
------------

* Wordpress
* Moodle
* Italc
* Mediawiki
* Atrium
* Elgg


Generar imagen ISO
------------------

<pre>

~$ git clone git@github.com:carpe-diem/conectar-igualdad-server-apps.git

~$ ./conectar-igualdad-server-apps/scripts/build-iso.sh

</pre>


La imagen la genera en /tmp/conectarigualdad-extras.iso

Imagen en Torrent
-----------------

En caso de que no quieras bajarte el código, podes descargar el torrent.

<pre>
</pre>

Desarrolladores
---------------

Este CD esta preparado para funcionar con las virtuales de los servidores de Conectar Igualdad. Para hacer pruebas locales, hay que cambiar el 
archivo de configuración con los datos de pruebas y modificar una linea, para que la copia sea por ssh.

<pre>
~$ cp src/config.cfg.example src/config.cfg
</pre>

Instalación:
-----------

Para seleccionar aplicaciones a instalar siga los siguientes pasos:

1- Haga clic en Aplicaciones -> Accesorios -> Terminal en el menú superior del sistema

2- Sobre la terminal escriba el comando siguiente:
cd /media/cdrom/

3- Presione la tecla "enter" (entrar)

4- Si realizó bien el paso anterior, debería ver el cursor posicionado sobre una linea como la que sigue:
topadmin@host:/media/cdrom

5- Sobre la terminal escriba el comando siguiente:
./instalar.sh

6- Presione la tecla "enter" (entrar)

7- Siga las instrucciones del instalador de aplicaciones


TODO
----

* Actualizar las aplicaciones a versiones más nuevas.
* Agregar mas aplicaciones.
