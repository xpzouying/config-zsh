

# Variables
OS="`uname`"

# 1. install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 2. vim-plugin for Neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



# 2. Plugins

# tmux-plugins
echo "Install tmux-plugins:"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm



if [[ "$OS" == "Linux" ]]; then
    echo "OS is Linux"
    
elif [[ "$OS" == "Darwin" ]]; then
    echo "OS is Mac"
    # Mac OSX
    
    # fzf
    brew install fzf
    # install fzf shell extensions
    /usr/local/opt/fzf/install

    # dircolor
    brew install coreutils
    cp $(pwd)/config/dircolors/dircolors.256dark ~/.dircolors-solarized
    echo "eval \"$(gdircolors ~/.dircolors-solarized)\"" >> ~/.zshrc
    echo "alias ls='gls --color=auto'" >> ~/.zshrc

    # oh-my-zsh plugin
    # autojump
    brew install autojump

    echo "[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc

else
    echo "Unknown system."
    exit 1
fi



# Config
echo "Config Tmux:"
ln -sf $(pwd)/config/tmux/tmux.conf $HOME/.tmux.conf
