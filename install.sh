set -e
DOTFILESD=$(pwd)

# vim setup
## pathogen
mkdir -p ${DOTFILESD}/.vim/autoload ~/.vim/bundle && \
curl -LSso ${DOTFILESD}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mkdir -p .vim/bundle
cd .vim/bundle/
## sensible vim settings
git clone https://github.com/tpope/vim-sensible.git
## python indentation
git clone git@github.com:vim-scripts/indentpython.vim.git
## auto close html tags
git clone git@github.com:alvan/vim-closetag.git
## status bar
git clone git@github.com:vim-airline/vim-airline.git
## NERDtree
git clone https://github.com/scrooloose/nerdtree.git
## auto completion
git clone git@github.com:Valloric/YouCompleteMe.git
cd YouCompleteMe && git submodule update --init --recursive
./install.py

ln -sv ${DOTFILESD}/.vim ~/.vim
ln -sv ${DOTFILESD}/.vimrc ~/.vimrc
ln -sv ${DOTFILESD}/.bashrc ~/.bashrc
