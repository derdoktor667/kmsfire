#!/bin/bash1

ServiceDir=/etc/init.d/
InitScriptName=$ServiceDir/kmsfire
Package=./kmsfire.tar.gz

cp ./kmsfire $InitScriptName
chmod a+x $InitScriptName

tar -xvf $Package -C /opt/kmsfire

