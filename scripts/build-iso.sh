#!/bin/bash

BUILD_DIRECTORY=/tmp/build
TMP_BUILD_DIRECTORY=/tmp/tmpbuild
TARBALL_DIRECTORY=$BUILD_DIRECTORY/apps/tarball

# Borro directorio build
rm -r $BUILD_DIRECTORY
rm -r $TMP_BUILD_DIRECTORY

mkdir $BUILD_DIRECTORY
mkdir -p $TMP_BUILD_DIRECTORY
mkdir -p $TARBALL_DIRECTORY

cd ../apps/src/intranet
tar czf $TARBALL_DIRECTORY/mediawiki.tar.gz --transform 's,^,/var/www/intranet/,S' mediawiki/
tar czf $TARBALL_DIRECTORY/wordpress.tar.gz --transform 's,^,/var/www/intranet/,S' wordpress/
tar czf $TARBALL_DIRECTORY/atrium.tar.gz --transform 's,^,/var/www/intranet/,S' atrium/
cd -

#cd ../
#tar czf $TARBALL_DIRECTORY/tutoriales.tar.gz --transform 's,^,/var/www/,S' intranet/tutoriales/
#cd -
#
#cd ../
#tar czf $TARBALL_DIRECTORY/manuales.tar.gz --exclude='detalles_aplicaciones.pdf' --exclude='Instalacion.pdf' --transform 's,^,/var/www/,S' intranet/manuales/
#cd -


cd ../
tar czf $TARBALL_DIRECTORY/tutoriales.tar.gz --transform 's,^,/var/www/,S' tutoriales/
cd -

# Armo los manuales
cd ../
tar czf $TMP_BUILD_DIRECTORY/tempmanuales.tar.gz --exclude='detalles_aplicaciones.pdf' --exclude='Instalacion.pdf' --transform 's,^,/var/www/intranet/,S' manuales/
cd -

cd ../apps/src/intranet/manuales
tar czf $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz --transform 's,^,/var/www/intranet/manuales/,S' .HEADER.html .README.html
cd -

#cd $TMP_BUILD_DIRECTORY
#tar xvfz $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz
#rm $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz
#mkdir -p var/www/intranet/manuales
#cd -

cd $TMP_BUILD_DIRECTORY
tar xvfz $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz
tar xvfz $TMP_BUILD_DIRECTORY/tempmanuales.tar.gz
mkdir -p var/www/intranet/manuales/wordpress
mkdir -p var/www/intranet/manuales/elgg/
mkdir -p var/www/intranet/manuales/italc/
mkdir -p var/www/intranet/manuales/moodle/
mkdir -p var/www/intranet/manuales/mediawiki/

cp var/www/intranet/manuales/.HEADER.html var/www/intranet/manuales/.HEADER.html
cp var/www/intranet/manuales/.README.html var/www/intranet/manuales/.README.html

cp var/www/intranet/manuales/.HEADER.html var/www/intranet/manuales/wordpress/.HEADER.html
cp var/www/intranet/manuales/.HEADER.html var/www/intranet/manuales/elgg/.HEADER.html
cp var/www/intranet/manuales/.HEADER.html var/www/intranet/manuales/italc/.HEADER.html
cp var/www/intranet/manuales/.HEADER.html var/www/intranet/manuales/moodle/.HEADER.html
cp var/www/intranet/manuales/.HEADER.html var/www/intranet/manuales/mediawiki/.HEADER.html
cp var/www/intranet/manuales/.README.html var/www/intranet/manuales/wordpress/.README.html
cp var/www/intranet/manuales/.README.html var/www/intranet/manuales/elgg/.README.html
cp var/www/intranet/manuales/.README.html var/www/intranet/manuales/italc/.README.html
cp var/www/intranet/manuales/.README.html var/www/intranet/manuales/moodle/.README.html
cp var/www/intranet/manuales/.README.html var/www/intranet/manuales/mediawiki/.README.html
tar czf $TARBALL_DIRECTORY/manuales.tar.gz var
rm -r $TMP_BUILD_DIRECTORY/intranet
cd -


#Armo tar para virtualhost
cd ../apps/virtualhost
tar czf $TMP_BUILD_DIRECTORY/tempvirtualhost.tar.gz --transform 's,^,/etc/apache2/sites-enabled/,S' 000-default
cd -

cd ../apps/src/intranet
tar czf $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz --transform 's,^,/var/www/intranet/,S' .HEADER.html .README.html
cd -

cd ../apps/src
tar czf $TMP_BUILD_DIRECTORY/tempheaderimg.tar.gz --transform 's,^,/var/www/,S' conectar_archivos
cd -

cd $TMP_BUILD_DIRECTORY
tar xvfz $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz
tar xvfz $TMP_BUILD_DIRECTORY/tempheaderimg.tar.gz
rm $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz
rm $TMP_BUILD_DIRECTORY/tempheaderimg.tar.gz
mkdir -p var/www/intranet
mkdir -p var/www/conectar_archivos
cd -

cd $TMP_BUILD_DIRECTORY
#tar xvfz $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz
tar xvfz $TMP_BUILD_DIRECTORY/tempvirtualhost.tar.gz
#rm $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz
#rm $TMP_BUILD_DIRECTORY/tempheaderhtml.tar.gz
tar czf $TARBALL_DIRECTORY/virtual-host.tar.gz etc var
rm -r $TMP_BUILD_DIRECTORY/etc
rm -r $TMP_BUILD_DIRECTORY/var
cd -
# Fin tar para virtualhost

#Armo tar para moodle
cd ../apps/src/intranet
tar czf $TMP_BUILD_DIRECTORY/tempmoodle.tar.gz --transform 's,^,/var/www/intranet/,S' moodle/
cd -

cd $TMP_BUILD_DIRECTORY
tar xvfz $TMP_BUILD_DIRECTORY/tempmoodle.tar.gz
rm $TMP_BUILD_DIRECTORY/tempmoodle.tar.gz
mkdir ./var/moodledata
tar czf $TARBALL_DIRECTORY/moodle.tar.gz var
rm -r $TMP_BUILD_DIRECTORY/var
cd -
# Fin tar para moodle

#Armo tar para elgg
cd ../apps/src/intranet
tar czf $TMP_BUILD_DIRECTORY/tempelgg.tar.gz --transform 's,^,/var/www/intranet/,S' elgg/
cd -

cd $TMP_BUILD_DIRECTORY
tar xvfz $TMP_BUILD_DIRECTORY/tempelgg.tar.gz
rm $TMP_BUILD_DIRECTORY/tempelgg.tar.gz
mkdir ./var/elggdata
tar czf $TARBALL_DIRECTORY/elgg.tar.gz var
rm -r $TMP_BUILD_DIRECTORY/var
cd -
# Fin tar para elgg

#Armo tar para alba
cd ../apps/src/intranet
tar czf $TMP_BUILD_DIRECTORY/tempalba.tar.gz --transform 's,^,/usr/share/,S' alba/
cd -

cd $TMP_BUILD_DIRECTORY
tar xvfz $TMP_BUILD_DIRECTORY/tempalba.tar.gz
rm $TMP_BUILD_DIRECTORY/tempalba.tar.gz
mkdir -p var/www/intranet
ln -s /usr/share/alba/web var/www/intranet/alba
tar czf $TARBALL_DIRECTORY/alba.tar.gz usr var
rm -r $TMP_BUILD_DIRECTORY/var
rm -r $TMP_BUILD_DIRECTORY/usr
cd -
# Fin tar para alba

# Repo SQL
cd ../scripts
tar czf $TARBALL_DIRECTORY/user-replace.tar.gz --transform 's,^,/tmp/,S' user-replace.sql
cd -

# Copio los repos de ubuntu y debian
cp ../apps/tarball/repositorio-ubuntu.tar.gz $TARBALL_DIRECTORY
cp ../apps/tarball/repositorio-debian.tar.gz $TARBALL_DIRECTORY

# Copio el codigo
cp -rf ../src $BUILD_DIRECTORY
cp -rf ../instalar.sh $BUILD_DIRECTORY
cp -rf ../README.md $BUILD_DIRECTORY
cp -rf ../LICENSE $BUILD_DIRECTORY

mv $BUILD_DIRECTORY/src/config.cfg{.example,}

rm -r $BUILD_DIRECTORY/src/tests

# Borro.pycs si existiesen
rm -rf `find $BUILD_DIRECTORY -name *.pyc`

# Compilo pycs
#python -c "import compileall; compileall.compile_dir('$BUILD_DIRECTORY', force=1)"

# Borro.py
#rm -rf `find $BUILD_DIRECTORY -name *.py`

# Copio los sql
cp -rpf ../apps/dump-sql $BUILD_DIRECTORY/apps

# Copio los crons
cp -rpf ../apps/cron $BUILD_DIRECTORY/apps

# Copio los manuales
cp -rpf ../manuales/ $BUILD_DIRECTORY/manuales

# Copio los tutoriales
cp -rpf ../tutoriales/ $BUILD_DIRECTORY/tutoriales

genisoimage -l -R -J -V "Conectar igualdad extras" -o /tmp/conectarigualdad-extras.iso $BUILD_DIRECTORY
