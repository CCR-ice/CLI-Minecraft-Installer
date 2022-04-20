echo "Updating..."
apt update && apt upgrade || dpkg --configure -a;
echo "Fetching package..."
curl https://launcher.mojang.com/download/Minecraft.deb -o pkg.deb &&
echo "Installing package..."
dpkg -i Minecraft.deb &&
apt -f install &&
echo "Done."
echo "Clening up..."
rm 
