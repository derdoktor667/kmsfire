#!/bin/sh

ServiceDir=/etc/init.d/
InitScriptName=$ServiceDir/kmsfire
Package=./kmsfire.tar.gz
DeamonName=kmsfire

cp ./kmsfire $InitScriptName
chmod a+x $InitScriptName

mkdir /opt/$DeamonName
tar -xvf $Package -C /opt

ln -s $ServiceDir/kmsfire /etc/rc.d/rc3.d/S45kmsfire

$ServiceDir/kmsfire start
$ServiceDir/kmsfire status
