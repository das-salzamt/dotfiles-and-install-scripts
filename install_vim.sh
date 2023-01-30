sudo apt install silversearcher-ag

# neovim
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
cp ~/.vimrc ~/.config/nvim/init.vim
nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \\n       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-rails.git
vim -u NONE -c "helptags vim-rails/doc" -c q
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-sensible.git
