# Pre-Requisites (For Kali GNU/Linux Rolling: Debian 12)

sudo apt-get update && sudo apt-get upgrade -y
sudo apt install build-essential meson cmake toolbox -y
# Make sure toolbox is installed if not just type toolbox and agree for install
toolbox create debian-toolbox-39
toolbox enter debian-toolbox-39

# Now you are inside container :) (From here all the commands and things has to do in container only)

sudo apt install libaccountsservice-dev -y && sudo apt install libcolord-dev libpulse-dev -y
sudo apt install libgnome-desktop-4-dev libgnome-bg-4-dev libgnome-rr-4-dev libgcr-3-dev libnma-gtk4-dev libudisks2-dev -y
sudo apt install libgnutls28-dev libgoa-backend-1.0-dev libcolord-gtk4-dev libwacom-dev libgnome-bluetooth-ui-3.0-dev libgsound-dev -y

sudo apt build-dep gnome-control-center -y
# If above command doesn't run then, you must have missing source packages repo links or source.list -> Do the steps of commented lines otherwise skip
# Add source lines inside sudo nano /etc/apt/sources.list:
# deb http://deb.debian.org/debian/ bullseye main
# deb-src http://deb.debian.org/debian/ bullseye main

# deb http://deb.debian.org/debian/ bullseye-updates main
# deb-src http://deb.debian.org/debian/ bullseye-updates main

# deb http://security.debian.org/debian-security/ bullseye-security main
# deb-src http://security.debian.org/debian-security/ bullseye-security main

# deb http://ftp.se.debian.org/debian/ buster main
# deb-src http://ftp.se.debian.org/debian/ buster main
# deb http://security.debian.org/debian-security buster/updates main
# deb-src http://security.debian.org/debian-security buster/updates main
# deb http://ftp.se.debian.org/debian/ buster-updates main
# deb-src http://ftp.se.debian.org/debian/ buster-updates main

# Make sure >=glib2.75.0 installed: otherwise Download the glib2.75.3 from: https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwj5lIaziej9AhU8JbcAHW08Dp8QFnoECAoQAQ&url=https%3A%2F%2Fdownload.gnome.org%2Fsources%2Fglib%2F2.75%2Fglib-2.75.3.tar.xz&usg=AOvVaw2MGqyU07rvvnAqS808EYhX
# Extract the folder and build this inside glib-2.75.3 folder:
# REMEMBER: Build libglib2.73.4 this command both inside toolbox
# meson build
# cd build
# sudo meson install

