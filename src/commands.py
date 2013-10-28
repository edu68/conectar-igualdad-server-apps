#!/usr/bin/python
# -*- coding: utf-8 -*-
import os
import socket
import shutil
import time

import pxssh
from src.constants import APP_ATRIUM_ID, APP_WORDPRESS_ID, APP_ITALC_ID, \
    APP_MOODLE_ID, APP_MEDIAWIKI_ID, APP_ELGG_ID, APP_ALBA_ID
from src.lib.sshstatic import SSHStatic
from src.settings import config


# datos de servidor, usuario y password
HOST = config.get('Servidor','hostname')
PORT = config.get('Servidor','port')
USER = config.get('Servidor','username')

# datos para superusuario de mysql
mysqluser =  config.get('Mysql','username')
mysqlpass =  config.get('Mysql','password')



PROGRAMS = {
        APP_ALBA_ID: 'Alba',
        APP_ATRIUM_ID: 'Atrium',
        APP_ELGG_ID: 'Elgg',
        APP_MEDIAWIKI_ID: 'Mediawiki',
        APP_ITALC_ID: 'Italc',
        APP_MOODLE_ID: 'Moodle',
        APP_WORDPRESS_ID: 'Wordpress'
        }


CONEXION = None

REMOTE_SRC_PATH = '/tmp'
VM_SRC_PATH = '/var/lib/vz/private/101/tmp'

FILE_TARBALL_ATRIUM = 'atrium.tar.gz'
FILE_TARBALL_ELGG = 'elgg.tar.gz'
FILE_TARBALL_MEDIAWIKI = 'mediawiki.tar.gz'
FILE_TARBALL_MOODLE = 'moodle.tar.gz'
FILE_TARBALL_REPO_UBUNTU = 'repositorio-ubuntu.tar.gz'
FILE_TARBALL_WORDPRESS = 'wordpress.tar.gz'
FILE_TARBALL_ALBA = 'alba.tar.gz'
FILE_DEBS = 'repositorio-debian.tar.gz'
FILE_VIRTUAL_HOST = 'virtual-host.tar.gz'
FILE_TUTORIALES = 'tutoriales.tar.gz'
FILE_MANUALES = 'manuales.tar.gz'
FILE_SQL_USER = 'user-replace.tar.gz'
FILE_TARBALL_LOCAL_DIR = 'apps/tarball/'
FILE_DUMP_LOCAL_DIR = 'apps/dump-sql/'
FILE_CRON_LOCAL_DIR = "apps/cron/"
FILE_DUMP_ATRIUM = 'atrium.sql'
FILE_DUMP_ELGG = 'elgg.sql'
FILE_DUMP_MEDIAWIKI = 'mediawiki.sql'
FILE_DUMP_MOODLE = 'moodle.sql'
FILE_DUMP_WORDPRESS = 'wordpress.sql'
FILE_DUMP_ALBA = 'alba.sql'
FILE_CRON_MOODLE = 'moodle.cron'
FILE_CRON_ATRIUM = 'atrium.cron'

CMD_TARBALL_DECOMPRESS = "sudo tar xvzf %s -C /"
CMD_DPKG_REMOVE = "sudo apt-get remove --force-yes -y apache2-mpm-worker libgd2-noxpm"
CMD_DPKG_INSTALL = "sudo dpkg -i /tmp/debianrepo/*"
CMD_A2ENMOD_REWRITE = "sudo a2enmod rewrite"
CMD_APACHE_RESTART = "sudo /etc/init.d/apache2 restart"
CMD_APACHE_START = "sudo /etc/init.d/apache2 start"
CMD_CHOWN_APACHE = "sudo chown -R www-data.www-data /var/www/* /var/moodledata /var/elggdata && sudo chown root.root /tmp /etc /etc/apache2 /etc/apache2/sites-enabled && sudo chmod 777 /tmp"
CMD_CHMOD_APACHE = "sudo chmod -R 755 /var/www /var/moodledata /var/elggdata"
CMD_MYSQL_INSTALL = "mysql -uadministrador -p%s<" % mysqlpass
CMD_MYSQL_INSTALL_DUMP = CMD_MYSQL_INSTALL + "%s"
CMD_MYSQL_STOP = "sudo /etc/init.d/mysql stop"
CMD_MYSQL_KILL_ALL = "sudo killall mysqld"
CMD_MYSQL_START ="sudo /etc/init.d/mysql start"
CMD_MYSQL_RESTART ="sudo /etc/init.d/mysql restart"
CMD_MYSQL_STOP_SKIP_GRANT = "sudo /usr/bin/mysqld_safe --skip-grant-tables &>/dev/null &"
CMD_SLEEP = "sleep 10"
CMD_MYSQL_USER_REPLACE = "mysql -u root < /tmp/user-replace.sql"
CMD_CRON_INSTALL = "sudo mv %s /etc/cron.d/"
CMD_CRON_RESTART = "sudo /etc/init.d/cron restart"


METHOD_INSTALL_TARBALL = 'install_tarball'
METHOD_INSTALL_DUMP = 'install_dump'
METHOD_INSTALL_CRON = 'install_cron'


def check_host():
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(10)
        s.connect((HOST, int(PORT)))
    except Exception, err:
        return False


def check_password(password):
    try:
        conexion = pxssh.pxssh()
        pass_check = conexion.login(HOST, USER, password)

    except Exception, err:
        return err.value

    else:
        return pass_check


def copy(archivo):
    #CONEXION.copy([archivo], path=REMOTE_SRC_PATH)
    shutil.copy(archivo, VM_SRC_PATH)

def copy_tarball(tarball):
    full_path = os.path.join(FILE_TARBALL_LOCAL_DIR, tarball)
    copy(full_path)
    remote_tarball_path = os.path.join(REMOTE_SRC_PATH, tarball)
    CONEXION.run(CMD_TARBALL_DECOMPRESS % remote_tarball_path)


class Installer(object):
    def __init__(self, password=None):
        CONEXION = SSHStatic(hostname=HOST, username=USER, password=password)
        global CONEXION
        super(Installer, self).__init__()

    def do_install_debs(self):
        copy_tarball(FILE_DEBS)
        CONEXION.run(CMD_DPKG_REMOVE)
        CONEXION.run(CMD_DPKG_INSTALL)

    def do_tutoriales(self):
        copy_tarball(FILE_TUTORIALES)

    def do_manuales(self):
        copy_tarball(FILE_MANUALES)

    def do_install_virtual_host(self):
        copy_tarball(FILE_VIRTUAL_HOST)
        CONEXION.run(CMD_A2ENMOD_REWRITE)

    def do_create_mysql_user(self):
        copy_tarball(FILE_SQL_USER)
        CONEXION.run(CMD_MYSQL_STOP)
        CONEXION.run(CMD_MYSQL_KILL_ALL)
        CONEXION.run(CMD_MYSQL_STOP_SKIP_GRANT)
        CONEXION.run(CMD_SLEEP)
        CONEXION.run(CMD_MYSQL_USER_REPLACE)
        CONEXION.run(CMD_MYSQL_RESTART)

    def do_permission_apache(self):
        CONEXION.run(CMD_CHOWN_APACHE)
        CONEXION.run(CMD_CHMOD_APACHE)

    def do_restart_apache(self):
        CONEXION.run(CMD_APACHE_RESTART)

    def do_start_apache(self):
        CONEXION.run(CMD_APACHE_START)

    def _avanzar_porcentaje(self, porcentaje_avance, porcentaje_avance_paso):
        procentaje_avance = porcentaje_avance + porcentaje_avance_paso
        return porcentaje_avance

    def batch_install(self, program_list):
        programclass_list = [eval(PROGRAMS.get(k)) for k in program_list]
        install_debs = any([k.install_deb for k in programclass_list])

        # Cantidad de pasos fijos sumandole uno para que el estadio inicial se
        # cuente
        cantidad_pasos_fijos = 5
        cantidad_instalaciones = len(programclass_list)

        cantidad_pasos_totales = cantidad_pasos_fijos + cantidad_instalaciones

        if install_debs:
            cantidad_pasos_totales += 1

        porcentaje_avance_paso = float(100) / cantidad_pasos_totales

        # Porcentaje inicial de avance para mostrar que se esta avanzando
        porcentaje_avance = porcentaje_avance_paso
        yield porcentaje_avance
        if install_debs:
            self.do_install_debs()
            porcentaje_avance += porcentaje_avance_paso
            yield porcentaje_avance

        self.do_tutoriales()
        self.do_manuales()

        self.do_install_virtual_host()
        porcentaje_avance += porcentaje_avance_paso
        yield porcentaje_avance

        self.do_create_mysql_user()
        porcentaje_avance += porcentaje_avance_paso
        yield porcentaje_avance

        for program in programclass_list:
            program.install()
            porcentaje_avance += porcentaje_avance_paso
            yield porcentaje_avance

        self.do_permission_apache()
        self.do_restart_apache()
        porcentaje_avance += porcentaje_avance_paso
        yield porcentaje_avance

        self.do_start_apache()
        porcentaje_avance += porcentaje_avance_paso
        yield porcentaje_avance


class Program(object):

    method_list = []
    install_deb = True
    tarball = None
    cron = None
    dump = None

    @classmethod
    def install(cls):
        """

        """
        for method_string in cls.method_list:
            method = getattr(cls, method_string)
            method()

    @classmethod
    def install_tarball(cls):
        """

        """
        copy_tarball(cls.tarball)

    @classmethod
    def install_dump(cls):
        full_path = os.path.join(FILE_DUMP_LOCAL_DIR, cls.dump)
        copy(full_path)
        remote_dump_path = os.path.join(REMOTE_SRC_PATH, cls.dump)
        CONEXION.run(CMD_MYSQL_INSTALL_DUMP % remote_dump_path)

    @classmethod
    def install_cron(cls):
        full_path = os.path.join(FILE_CRON_LOCAL_DIR, cls.cron)
        copy(full_path)
        remote_cron_path = os.path.join(REMOTE_SRC_PATH, cls.cron)
        CONEXION.run(CMD_CRON_INSTALL % remote_cron_path)


class Alba(Program):
    method_list = [METHOD_INSTALL_TARBALL, METHOD_INSTALL_DUMP]
    install_deb = True
    tarball = FILE_TARBALL_ALBA
    dump = FILE_DUMP_ALBA


class Wordpress(Program):
    method_list = [METHOD_INSTALL_TARBALL, METHOD_INSTALL_DUMP]
    install_deb = True
    tarball = FILE_TARBALL_WORDPRESS
    dump = FILE_DUMP_WORDPRESS


class Moodle(Program):
    method_list = [METHOD_INSTALL_TARBALL, METHOD_INSTALL_DUMP,
                   METHOD_INSTALL_CRON]
    install_deb = True
    tarball = FILE_TARBALL_MOODLE
    cron = FILE_CRON_MOODLE
    dump = FILE_DUMP_MOODLE


class Italc(Program):
    method_list = [METHOD_INSTALL_TARBALL]
    install_deb = False
    tarball = FILE_TARBALL_REPO_UBUNTU
    dump = None


class Mediawiki(Program):
    method_list = [METHOD_INSTALL_TARBALL, METHOD_INSTALL_DUMP]
    install_deb = True
    tarball = FILE_TARBALL_MEDIAWIKI
    dump = FILE_DUMP_MEDIAWIKI


class Atrium(Program):
    method_list = [METHOD_INSTALL_TARBALL, METHOD_INSTALL_DUMP,
                   METHOD_INSTALL_CRON]
    install_deb = True
    tarball = FILE_TARBALL_ATRIUM
    cron = FILE_CRON_ATRIUM
    dump = FILE_DUMP_ATRIUM


class Elgg(Program):
    method_list = [METHOD_INSTALL_TARBALL, METHOD_INSTALL_DUMP]
    install_deb = True
    tarball = FILE_TARBALL_ELGG
    dump = FILE_DUMP_ELGG
