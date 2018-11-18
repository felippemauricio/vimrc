# Clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Move .vimrc file to user path
cp .vimrc ~/

# Install Plugins
vim +PluginInstall +qall

