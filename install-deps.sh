# Install Ack
mkdir -p ~/.local/bin
curl http://beyondgrep.com/ack-2.14-single-file > ~/.local/bin/ack && chmod 0755 ~/.local/bin/ack

# Setup new software
echo "PATH=$PATH:~/.local/bin/" > ~/.profile
PATH=$PATH:~/.local/bin/
echo "runtime vimrc" > ~/.vimrc

