# Checks if already installed and stops the install if it is
if [ -f "/Library/Apple/usr/libexec/oah/libRosettaRuntime" ]; then
echo "Rosetta is Already Installed."         
echo "Installation Cancelled"
else
# Proceeds with Install if Office is not found
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
echo "Rosetta was successfully installed!";
fi
