# config-zsh

Config zshrc.


##########
# color for dircolors

$ brew install coreutils
$ git clone https://github.com/seebi/dircolors-solarized.git
$ mv ./dircolors-solarized/dircolors.ansi-universal ~/.dircolors-solarized

cat ~/.bash_profile
    eval "$(gdircolors ~/.dircolors-solarized)"
    alias ls='gls --color=auto'

