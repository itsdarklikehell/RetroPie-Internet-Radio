#!/bin/bash
CONFIGURE(){
WORKDIR=~/RetroPie-Internet-Radio
ROMSDIR=~/RetroPie/roms
RADIODIR=~/RetroPie/roms/radio
CURNTHEME=/etc/emulationstation/themes/carbon
NEWTHEME=/opt/retropie/configs/all/emulationstation/themes/carbon-custom
NEWART=~/RetroPie-Internet-Radio/theme/art
CONFIGDIR=/opt/retropie/configs/radio
PLAYER="vlc"
}
INSTALL(){
<<<<<<< HEAD
#sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y $PLAYER
echo "Installing to $RADIODIR"
cp -TR $WORKDIR/radio $RADIODIR
=======
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y $PLAYER
echo "Installing to $RADIODIR"
cp -R $WORKDIR/radio $ROMSDIR/radio
>>>>>>> a72edbbaab5bd0e7dbab59b1a6e8b342a12ed4ff
}
CREATEMENU(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Setting up EmulationStation menu options...(STILL WIP)..."
echo " = = = = = = = = = = = = = = = = = = = = "
mkdir -p $CONFIGDIR
<<<<<<< HEAD
cp -TR $WORKDIR/menu/es_systems.cfg $CONFIGDIR/es_systems.cfg
cp -TR $WORKDIR/menu/emulators.cfg $CONFIGDIR/emulators.cfg
=======
cp -u $WORKDIR/menu/es_systems.cfg $CONFIGDIR/es_systems.cfg
cp -u $WORKDIR/menu/emulators.cfg $CONFIGDIR/emulators.cfg
>>>>>>> a72edbbaab5bd0e7dbab59b1a6e8b342a12ed4ff
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Please edit /opt/retropie/configs/all/emulationstation/es_systems.cfg so that is includes the following:"
cat $WORKDIR/menu/es_systems.cfg
echo " = = = = = = = = = = = = = = = = = = = = "
read -rsp $'Press any key to continue...\n' -n 1 key
}
CREATETHEME(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Installing custom emulationstation theme..."
echo " = = = = = = = = = = = = = = = = = = = = "
<<<<<<< HEAD
mkdir -p $NEWTHEME/radio/art
cp -TR $CURNTHEME $NEWTHEME
cp -TR $NEWART $NEWTHEME/radio/art
cp -TR $WORKDIR/theme/theme.xml $NEWTHEME/radio/theme.xml
#chown -R pi:pi $NEWTHEME
echo "A new custom theme has been set up at $NEWTHEME"
=======
cp -u $CURNTHEME $NEWTHEME
cp -u $NEWART $NEWTHEME/radio/art
cp -u $WORKDIR/theme/theme.xml $NEWTHEME/radio/theme.xml
echo "A new cutom theme has been set up at $NEWTHEME"
>>>>>>> a72edbbaab5bd0e7dbab59b1a6e8b342a12ed4ff
echo "Select it in emulationstation to use it"
read -rsp $'Press any key to continue...\n' -n 1 key
}
##############################
CONFIGURE
INSTALL
CREATEMENU
<<<<<<< HEAD
CREATETHEME
=======
CREATETHEME
>>>>>>> a72edbbaab5bd0e7dbab59b1a6e8b342a12ed4ff
