#!/usr/bin/python
# -*- coding: utf-8 -*-

from src.lib.pyzenity.PyZenity import List, InfoMessage, Question, \
    GetText, Progress, ErrorMessage

from src.constants import APPS_TEXT, CHOICE_TEXT, QUIT_TEXT, \
    ADMIN_PASS_TEXT, ADMIN_PASS_TEXT_ERROR, TITLE_TEXT, WELCOME_TEXT, \
    HOST_TEXT_ERROR, APP_INSTALL, INSTALLED_APP_TEXT, SSH_TEXT_ERROR

from src.commands import check_host, check_password, Installer
from src.settings import config


# Pantalla para elegir aplicaciones a instalar.
def install_choice():
    """Generar pantalla con listado de aplicaciones desponibles para
    que el usuario elija cuales instalar.

    return None: Eligio el boton Cancelar.
    return ['']: No selecciono ninguna aplicación para instalar.
    return ['Alba', 'Wordpress']: Lista de Aplicaciones elegidas.
    """

    column_names = [u'Instalar', u'Aplicación', u'¿Qué puedo hacer?']
    data= []
    for key, value in APP_INSTALL:
        data.append((False, key.capitalize(), value))

    return List(column_names=column_names, title=TITLE_TEXT, boolstyle="checklist",
        editable=False, data=data, width=800, height=600, text=APPS_TEXT)

def get_admin_pass():
    """Generar pantalla para que el usuario ingrese la contraseña de root"""
    return GetText(text=ADMIN_PASS_TEXT, password=True, title=TITLE_TEXT)

def admin_pass_error():
    """Generar pantalla para que el usuario ingrese la contraseña de root"""
    ErrorMessage(text=ADMIN_PASS_TEXT_ERROR, title=TITLE_TEXT)
    return get_admin_pass()

def host_error():
    """Avisar de error en host. El host no existe."""
    host = config.get('Servidor','hostname')
    return ErrorMessage(text=(HOST_TEXT_ERROR % host), title=TITLE_TEXT)

def cancel_screen():
    option = Question(text=QUIT_TEXT,title=TITLE_TEXT)
    return option

def msg_installed(apps_list):
    apps = "\n".join(apps_list)
    advertencia = INSTALLED_APP_TEXT % apps
    option = Question(text=advertencia,title=TITLE_TEXT)
    return option

def get_check_host():
    """Verificar que exista el host."""
    progress_bar = Progress(text=u"Iniciando ...", auto_close=True)
    progress_bar(50, u"Chequeando servidor")
    existe_host = check_host()
    progress_bar(100, u"Chequeo completo")
    return existe_host

def install_apps(apps, admin_pass):
    """Instalar aplicaciones."""
    progress_bar = Progress(text=u"Comenzando el proceso...", auto_close=False)
    installer = Installer(admin_pass)
    for progress in installer.batch_install(apps):
        progress_int = int(progress)
        progress_bar(progress_int, u"Instalando %s%%" % progress_int)

def password_check(admin_pass):
    """Chequear si el password es correcto."""
    progress_bar = Progress(text=u"Iniciando ...", auto_close=True)
    progress_bar(50, u"Chequeando ...")
    admin_pass_ok = check_password(admin_pass)
    progress_bar(100, u"Chequeo completo")
    return admin_pass_ok

def error_ssh_msg(error):
    ErrorMessage(text=SSH_TEXT_ERROR, title=TITLE_TEXT)

def password_screen():
    """Ingresar de password de administrador."""
    admin_pass = get_admin_pass()
    # verifico que el password sea correcto
    admin_pass_ok = password_check(admin_pass)

    if admin_pass_ok != True and admin_pass_ok != False:
        error_ssh_msg(admin_pass_ok)
        
    while admin_pass_ok == False:
        admin_pass = admin_pass_error()
        admin_pass_ok = password_check(admin_pass)

    return admin_pass

def start():
    u"""Arrancar el proceso de instalación."""
    apps = install_choice()

    # Si en la pantalla de elección de aplicaciones a instalar elige cancelar,
    # entra a este if.
    if apps is None:
        option = cancel_screen()
        if not option:
            start()

    # Si en la pantalla de elección de aplicaciones a instalar elige aceptar, y
    # no eligio nada, entra a este if.
    elif apps == ['']:
        msg = InfoMessage(text=CHOICE_TEXT, title=TITLE_TEXT)

    # Si en la pantalla de elección de aplicaciones a instalar elige aceptar, y
    # elige por lo menos una opción, continua con el preceso de instalación
    else:
        msg_apps_installed = msg_installed(apps)
        if msg_apps_installed:
            admin_pass = password_screen()
            install_apps(apps, admin_pass)

# Primer pantalla - Pantalla de bienvenida
welcome = InfoMessage(text=WELCOME_TEXT, title=TITLE_TEXT, width=600, height=400)

# Chequeo si existe el host
existe_host = get_check_host()
if existe_host is False:
    host_error()
else:
    start()
