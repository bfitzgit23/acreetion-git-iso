# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnosterzak"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# fastfetch. Will be disabled if above colorscript was chosen to install
fastfetch

# Set-up icons for files/folders in terminal
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

alias install="sudo pacman -S"
alias uninstall="sudo pacman -Rns"
alias pupd="sudo pacman -Syyu"
alias yupd="yay -Syu --noconfirm"
alias edit="mousepad"
alias sedit="sudo mousepad"
alias rsmb="sudo systemctl restart smb"
alias rnmb="sudo systemctl restart nmb"
alias yinstall="yay -S"
alias reflect="sudo reflector --verbose -l 20 --sort rate --save /etc/pacman.d/mirrorlist"
alias gpgup="updpkgsums"
alias reload="source ~/.zshrc"
alias up-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
