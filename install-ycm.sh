if ! dpkg-query -l | grep -q 'build-essential\s'; then
  echo 'installing package: build-essential ...';
  sudo apt-get --force-yes --yes install build-essential;
else
  echo 'package: build-essential was found. Proceeding...';
fi
if ! dpkg-query -l | grep -q 'cmake\s'; then
  echo 'installing package: cmake ...';
  sudo apt-get --force-yes --yes install cmake;
else
  echo 'package: cmake was found. Proceeding...';
fi
if ! dpkg-query -l | grep -q 'python-dev\s'; then
  echo 'installing package: python-dev ...';
  sudo apt-get --force-yes --yes install python-dev;
else
  echo 'package: python-dev was found. Proceeding...';
fi
./bundle/YouCompleteMe/install.sh
