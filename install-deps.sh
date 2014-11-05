# Install Ack
mkdir ~/bin
curl http://beyondgrep.com/ack-2.14-single-file > ~/bin/ack && chmod 0755 ~/bin/ack

# Setup new software
echo "alias ack='~/bin/ack'" > ~/.profile
alias ack='~/bin/ack'
echo "runtime vimrc" > ~/.vimrc

