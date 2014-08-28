To install in a new system use the following steps:

    git clone https://github.com/notyoyoma/vimrc.git ~/.vim/
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    echo "runtime vimrc" > ~/.vimrc
    vim -c 'PluginInstall'


To setup YCM on UBUNTU only:

    cd ~/.vim/
    git checkout -u ycm origin/ycm
    vim -c 'PluginInstall'


quit vim, then run this:

    ./install-ycm.sh

