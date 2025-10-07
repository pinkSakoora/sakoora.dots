# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/$USER/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

wallset() {
	~/.config/scripts/wallset
}	# Runs a wallpaper setting script

fixupdate() {
	sudo rm -R /var/lib/pacman/sync
	sudo find /var/cache/pacman/pkg/ -iname "*part" -delete
	sudo pacman-key --populate archlinux
}	# Fixes interrupted or partial pacman downloads
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
