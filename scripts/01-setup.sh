export PKGMGR=`cat $ROOTDIR/files/PKGMGR`

if [ -z `command -v wget` ]; then
	# Install wget if not exist
	$INSTALL wget
fi

