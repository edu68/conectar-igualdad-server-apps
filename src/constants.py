# -*- coding: utf-8 -*-

TITLE_TEXT = u"Instalación de Aplicaciones"

WELCOME_TEXT = u"""Bienvenido al instalador del proyecto Conectar Igualdad.

El programa Conectar Igualdad es una iniciativa que busca recuperar y valorizar
la escuela pública con el fin de reducir las brechas digitales, educativas y
sociales en toda la extensión de nuestro país.

Se trata de una política de Estado creada a partir del decreto 459/10, e
implementada en conjunto por Presidencia de la Nación, la Administración
Nacional de Seguridad Social (ANSES), el Ministerio de Educación de la Nación,
la Jefatura de Gabinete de Ministros y el Ministerio de Planificación Federal de
Inversión Pública y Servicios.
"""

APPS_TEXT = u"""
Seleccione una o más aplicaciones a instalar:
"""

QUIT_TEXT = u"¿Desea salir del programa de instalación?"

CHOICE_TEXT = u"Debe elegir una opción"

ADMIN_PASS_TEXT = u"Ingrese la contraseña de administrador"

ADMIN_PASS_TEXT_ERROR = u"La contraseña ingresada es inválida"

INSTALLED_APP_TEXT = u"""Se instalarán las siguientes aplicaciones:
%s
Si alguna de las aplicaciones seleccionadas está
instalada se reemplazará y perderá todos sus datos.
¿Esta seguro que desea continuar?
"""

HOST_TEXT_ERROR = u"""No se puede detectar el servidor %s
Verifique que el mismo este encendido.
"""

SSH_TEXT_ERROR = u"""Error al intentar conectarse al ssh"""

APP_ALBA_ID = u"Alba"
APP_WORDPRESS_ID = u"Wordpress"
APP_MOODLE_ID = u"Moodle"
APP_ITALC_ID = u"Italc"
APP_MEDIAWIKI_ID= u"Mediawiki"
APP_ATRIUM_ID = u"Atrium"
APP_ELGG_ID = u"Elgg"

APP_ALBA_DESC = u"Gestion de unidad educativa"
APP_WORDPRESS_DESC = u"Desarrollar un blog para investigar y registrar distintos temas"
APP_MOODLE_DESC = u"Organizar un campus para la escuela"
APP_ITALC_DESC = u"Visualizar los trabajos de los alumnos desde mi netbook"
APP_MEDIAWIKI_DESC = u"Crear proyectos en forma colaborativa"
APP_ATRIUM_DESC = u"Administrar tareas y proyectos"
APP_ELGG_DESC = u"Establecer una red social propia de la comunidad escolar"

APP_INSTALL = (
        (APP_WORDPRESS_ID, APP_WORDPRESS_DESC),
        (APP_MOODLE_ID, APP_MOODLE_DESC),
        (APP_ITALC_ID, APP_ITALC_DESC),
        (APP_MEDIAWIKI_ID, APP_MEDIAWIKI_DESC),
        (APP_ATRIUM_ID, APP_ATRIUM_DESC),
        (APP_ELGG_ID, APP_ELGG_DESC),
        (APP_ALBA_ID, APP_ALBA_DESC)
    )
