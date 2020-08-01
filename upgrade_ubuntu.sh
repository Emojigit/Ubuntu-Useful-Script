# /bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

apt-get update
apt-get upgrade
apt-get install update-manager-core
do-release-upgrade
echo "A reboot is reqired. You can check the upgrade by using this command: lsb_release -a"
