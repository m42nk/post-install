declare -A osInfo;

# osInfo[/etc/redhat-release]="sudo yum install"
# osInfo[/etc/gentoo-release]=emerge
# osInfo[/etc/SuSE-release]=zypp
osInfo[/etc/arch-release]="sudo pacman --noconfirm -S;-;sudo pacman -Syyu --noconfirm;-;sudo pacman -Rcns"
osInfo[/etc/debian_version]="sudo apt-get -y install;-;sudo apt-get update && sudo apt-get -y upgrade;-;sudo apt-get -y remove"

for f in ${!osInfo[@]}; do
  if [[ -f $f ]];then

    INFO=${osInfo[$f]}

    INSTALL=`echo "$INFO" | awk -F';-;' '{print $1}'`
    UPDATE=`echo "$INFO" | awk -F';-;' '{print $2}'`
    UNINSTALL=`echo "$INFO" | awk -F';-;' '{print $3}'`

    echo "export INSTALL=\"$INSTALL\"" > $ROOTDIR/files/PKGMGR
    echo "export UPDATE=\"$UPDATE\"" >> $ROOTDIR/files/PKGMGR
    echo "export UNINSTALL=\"$UNINSTALL\"" >> $ROOTDIR/files/PKGMGR

    echo Package manager: ${PKGMGR}
    echo "Done"
  fi
done
