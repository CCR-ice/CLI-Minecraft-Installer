echo "Updating..." &&
apt update && apt upgrade || dpkg --configure -a &&
echo "Done." &&
echo "Fetching package..." &&
curl https://launcher.mojang.com/download/Minecraft.deb -o pkg.deb &&
echo "Done." &&
echo "Installing package 1..." &&
dpkg -i pkg.deb ||
apt --fix-broken install &&
apt -f install &&
echo "Done." &&
echo "Updating packages..." &&
apt-get update -y &&
echo "Done." &&
echo "Installing package 2..." &&
apt-get install -y libsecret-1-0 &&
echo "Done" &&
echo "Clening up..." &&
rm -rf pkg.deb &&
echo "Done." &&
echo "Starting minecraft-launcher" &&
minecraft-launcher &&
echo "Done."
