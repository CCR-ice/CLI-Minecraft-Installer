(
  echo "Updating..." &&
  apt update && apt upgrade || dpkg --configure -a &&
  echo "Done." &&
  echo "Fetching package..." &&
  curl https://launcher.mojang.com/download/Minecraft.deb -o pkg.deb &&
  echo "Done." &&
  echo "Installing package 1..." &&
  dpkg -i pkg.deb &&
  apt -f install &&
  apt --fix-broken install &&
  echo "Done." &&
  echo "Updating packages..." &&
  apt-get update -y &&
  echo "Done." &&
  echo "Installing package 2..." &&
  apt-get install -y libsecret-1-0 &&
  apt install --fix-missing &&
  echo "Done" &&
  echo "Clening up..." &&
  echo "Removing \"pkg.deb\"" &&
  rm -rf pkg.deb &&
  echo "Done." &&
  echo "Done.";
) && echo "The installation was fully secuessful!" || echo "The installation was not fully secusessful.";
