# Install Ack
mkdir -p ~/.local/bin
curl http://beyondgrep.com/ack-2.14-single-file > ~/.local/bin/ack && chmod 0755 ~/.local/bin/ack
curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > ~/.local/bin/wp && chmod 0755 ~/.local/bin/wp

# Setup new software
echo "PATH=$PATH:~/.local/bin/" > ~/.profile
PATH=$PATH:~/.local/bin/
echo "runtime vimrc" > ~/.vimrc

# UBUNTU only: setup tools to build YCM
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
