#!/bin/bash
CONFIGURE(){
WORKDIR="~/RetroPie-Internet-Radio"
ROMSDIR="~/RetroPie/roms"
RADIODIR="$ROMSDIR/radio"
CURNTHEME="/etc/emulationstation/themes/carbon"
NEWTHEME="/opt/retropie/configs/all/emulationstation/themes/carbon-custom"
NEWART="$WORKINGDIR/theme/art"
PLAYER="cvlc"
}
INSTALL(){
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y $PLAYER
echo "Installing to $RADIODIR"
cp -R $WORKDIR/radio $ROMSDIR
}
CREATEMENU(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Setting up EmulationStation menu options...(STILL WIP)..."
echo " = = = = = = = = = = = = = = = = = = = = "
mkdir -p /opt/retropie/configs/radio
cp $WORKINGDIR/menu/es_systems.cfg /opt/retropie/configs/radio/es_systems.cfg
cp $WORKINGDIR/menu/emulators.cfg /opt/retropie/configs/radio/emulators.cfg
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Please edit /opt/retropie/configs/bgm/es_systems.cfg so that is includes the following:"
cat $WORKINGDIR/menu/es_systems.cfg
echo " = = = = = = = = = = = = = = = = = = = = "
read -rsp $'Press any key to continue...\n' -n 1 key
}
CREATETHEME(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Installing custom emulationstation theme...(STILL WIP)"
echo " = = = = = = = = = = = = = = = = = = = = "
cp -R $CURNTHEME $NEWTHEME
cp -R $NEWART $NEWTHEME/radio/art
cp -R $WORKINGDIR/theme/theme.xml $NEWTHEME/radio/theme.xml
echo "A new cutom theme has been set up at $NEWTHEME"
echo "Select it in emulationstation to use it"
read -rsp $'Press any key to continue...\n' -n 1 key
}
##############################
CONFIGURE
INSTALL
CREATEMENU
CREATETHEME