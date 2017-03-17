pwd

ln -f .vimrc ~/
ln -f .bashrc ~/

# install vim Vundle, then you need to :BundleInstall
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install pandoc
sudo apt-get update
sudo apt-get install pandoc
