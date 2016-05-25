

# Variables
OS="`uname`"

# 1. install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 2. vim-plugin for Neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



# 2. Plugins
if [[ "$OS" == "Linux" ]]; then
    
elif [[ "$OS" == "Darwin" ]]; then
    # Mac OSX
    
    # fzf
    brew install fzf
    # install fzf shell extensions
    /usr/local/opt/fzf/install

else
    echo "Unknown system."
    exit 1
fi
