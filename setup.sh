echo "Updating..." &&
apt update && apt upgrade || dpkg --configure -a &&
echo "Fetching package..." &&
curl https://launcher.mojang.com/download/Minecraft.deb -o pkg.deb &&
echo "Done." &&
echo "Installing package..." &&
dpkg -i pkg.deb &&
apt -f install &&
echo "Done." &&
echo "Clening up..." &&
rm -rf pkg.deb &&
echo "Done."
