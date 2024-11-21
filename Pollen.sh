#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Please run this script as root. You can do so by using 'sudo su'."
    exit
fi

echo "+##############################################+"
echo "| Welcome to Pollen!                           |"
echo "| The User Policy Editor                       |"
echo "| -------------------------------------------- |"
echo "| Developers:                                  |"
echo "| - OlyB                                       |"
echo "| - Rafflesia                                  |"
echo "| - r58Playz                                   |"
echo "+##############################################+"
echo "May Ultrablue rest in peace, o7."


sleep 1

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
echo '{
  "PowerManagementIdleSettings":{
    "AC":{
      "Delays":{
        "Idle":0001,
        "ScreenDim":0001,
        "ScreenOff":0001
      },
      "IdleAction:"Shutdown
    },
    "Battery":{
      "Delays":{
        "Idle":0001,
        "ScreenDim":0001,
        "ScreenOff":0001
      },
      "IdleAction:"Shutdown
    }
  },
  "UrlBlocklist":['*']
}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
echo "Pollen has been successfully applied!"
