#!/usr/bin/env bash
user_name=`id -un`

if mkdir itype; then
    cd itype
    mkdir resources
    cd resources
else
    echo " -- install_itype: FAILED"
fi

curl -s "https://raw.githubusercontent.com/craigcarter42/itype/master/itype_help.txt" >> itype_help.txt
if [ -e itype_help.txt ]; then
    echo " -- install_itype:  help : installed"
else
    echo " -- install_itype:  help : FAILED"
    exit
fi
curl -s "https://raw.githubusercontent.com/craigcarter42/itype/master/itype.plist" >> itype.plist
if [ -e itype.plist ]; then
    echo " -- install_itype: plist : installed"
else
    echo " -- install_itype: plist : FAILED"
    exit
fi
cd ..

# -- Downlaod Program
curl -s "https://raw.githubusercontent.com/craigcarter42/itype/master/itype" >> itype
if [ -e itype ]; then
    echo " -- install_itype: itype : installed"
    chmod +x itype
else
    echo " -- install_itype: itype : FAILED"
    exit
fi
cd
