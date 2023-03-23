# Display mouse cursor
sudo nano /etc/lightdm/lightdm.conf
# Add 'xserver-command = X -nocursor' after the [Seat:*] section
# Reboot pi using command 'sudo reboot'

# Set EKart and APD to run on boot
mkdir /home/gokart/.config/autostart
nano /home/gokart/.config/autostart/ekart.desktop
# Put this inside:
# [Desktop Entry]
# Type=Application
# Name=ekart_start
# Exec=sh /home/gokart/projects/EKartUI/start_ui.sh
# Reboot pi using command 'sudo reboot'

# This will run the ~/start_ui.sh script on boot. 
# To adjust boot behavior, the ~/start_ui.sh script should be changed.
# It currently just waits for 30 seconds to hope APD has started before starting EKartUI
# this should probably be changed/improved at some point..

