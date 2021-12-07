#!/bin/bash
# Checks if App is already installed and stops the install if it is
if [ -d "/Applications/AppName.app/Contents" ]; then
echo "TeamViewer Host is Already Installed."         
echo "Installation Cancelled"
else
# Proceeds with Install if App is not found
URLDOWNLOAD="https://URL/package.pkg";
NAME=/tmp/$(basename $URLDOWNLOAD);
curl --silent -o "$NAME" "$URLDOWNLOAD";
if [ ! -f "$NAME" ]; then
	echo "An error occurred, installation cancelled.";
	rm -rf "$NAME"
	exit
fi
installer -allowUntrusted -pkg "$NAME" -target /;
rm -rf "$NAME"
echo "App was successfully installed!";
fi