#!/bin/sh

if [ -e '/root/main.zip' ]; then
rm ~/main.zip
fi
if [[ $(sh -c 'exec /etc/init.d/moonraker status') == *"running"* ]]; then
sh -c 'exec /etc/init.d/moonraker stop'
fi
if [ ! -e '/usr/share/moonraker_backup' ]; then
    echo "Backup original moonraker to 'moonraker_backup'"
	mv /usr/share/moonraker /usr/share/moonraker_backup
fi
if [ -e '/usr/share/moonraker' ]; then
    echo "Found moonraker, removing..."
	rm -r /usr/share/moonraker
fi
echo "Installing new moonraker..."
cp -r ~/Hi-Camera-main/moonraker /usr/share/moonraker
echo "Install camera support..."
cp ~/Hi-Camera-main/camera.html /usr/share/frontend/camera.html
cp ~/Hi-Camera-main/snapshot.html /usr/share/frontend/snapshot.html
cp ~/Hi-Camera-main/index.html /usr/share/frontend/index.html
cp ~/Hi-Camera-main/favicon.ico /usr/share/frontend/favicon.ico
cp ~/Hi-Camera-main/mylogo.png /usr/share/frontend/mylogo.png
cp ~/Hi-Camera-main/camera.html /usr/share/fluidd/camera.html
cp ~/Hi-Camera-main/snapshot.html /usr/share/fluidd/snapshot.html
sh -c 'exec /etc/init.d/moonraker start'
echo "Complete."