# Install Ack
mkdir ~/bin
curl http://beyondgrep.com/ack-2.14-single-file > ~/bin/ack && chmod 0755 ~/bin/ack

# Setup new software
echo "PATH=$PATH:~/bin/" > ~/.profile
PATH=$PATH:~/bin/
echo "runtime vimrc" > ~/.vimrc

