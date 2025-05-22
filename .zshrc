plugins=(fzf-tab)
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload -U colors && colors
PS1="%F{magenta}%n%f@%F{magenta}%m%f %{$fg[cyan]%}%~ %{$fg[blue]%}>%b "

# Default Tab Completion
# zstyle ':completion:*' menu select 
# zstyle ':completion:*' completer _complete _correct _approximate
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

_comp_options+=(globdots) 
autoload -U compinit
compinit
# fzf completion
source ~/.zsh/plugins/fzf-tab/fzf-tab.zsh	
zstyle ':fzf-tab:*' fzf-flags --preview-window=right:60%
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color=always $realpath'
zstyle ':fzf-tab:complete:bat:*' fzf-preview 'bat --color=always $realpath'
zstyle ':fzf-tab:complete:less:*' fzf-preview 'less $realpath'
colors

setopt correct
setopt extendedglob
setopt nocaseglob
setopt rcexpandparam
setopt numericglobsort
setopt nobeep
setopt histignorealldups
setopt autocd

export EDITOR=nvim
export TERMINAL=alacritty
export BROWSER=brave
export FILEMAN=thunar


#os 
alias sex="startx"
alias fm="ranger"
alias ll='exa -l --color=always --icons --all '
alias ls='exa -l --color=always --icons --no-permissions'
alias mf="mkf"
alias md="mkdir"
alias sus="pall ; poweroff"
alias rbt="pall ; sudo reboot"
alias :q="exit"
alias fucking="sudo"


#paru
alias prs="paru -S"
alias pss="paru -Ss"
alias prr="paru -Rscn"
alias pall="paru -Syu --noconfirm"


# git 
alias g="git"
alias gs="git status"
alias gcm="git commit -a -m"
alias ga="git add"
alias gpl="git pull"
alias gp="git push"
alias gi="git init"
alias gc="git clone"

# downloading from web
webdl() {
		case $1 in
		     mp3) yt-dlp -x --format bestaudio --audio-format mp3 --add-metadata -o $2 $3; touch $2.* ;;
		     opus) yt-dlp -x --audio-format opus --add-metadata -o $2 $3; touch $2.*;;
		     best) yt-dlp --format bestvideo+bestaudio --add-metadata  -o $2 $3; touch $2.*;;
		     *) echo "Usage: webdl <mp3|opus|best> <name> <link>"        ;;
    esac
}
#misc

alias vk="QT_QPA_PLATFORM="" /usr/lib/vktablet/vktablet &"
alias nf="fastfetch --logo-color-1 magenta --logo-color-2 magenta --color magenta"
alias venfix='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias v="$EDITOR"
alias vim="$EDITOR"
alias mi="make install"

function sys() {
	case $1 in
		e*) systemctl enable --now $2 ;;
		d*) systemctl disable --now $2 ;;
		strt*) systemctl start $2 ;;
		stp*) systemctl stop $2 ;;
		stat*) systemctl status $2 ;;
		r*) systemctl restart $2 ;;
		*) echo "usage: sys <flag>\ne = enable\nd = disable\nstrt = start\nstp = stop\nstat = status\nr = restart" ;;
	esac
}

ex() {
	if [ -f $1 ] ; then
		case $1 in
		     *.tar.bz2)   tar xjf $1   ;;
 		     *.tar.gz)    tar xzf $1   ;;
 		     *.bz2)       bunzip2 $1   ;;
 		     *.rar)       unrar x $1   ;;
 		     *.gz)        gunzip $1    ;;
 		     *.tar)       tar xf $1    ;;
 		     *.tbz2)      tar xjf $1   ;;
			 *.tgz)       tar xzf $1   ;;
		     *.zip)       unzip $1     ;;
			 *.Z)         uncompress $1;;
  		     *.7z)        7z x $1      ;;
		     *.deb)       ar x $1      ;;
		     *.tar.xz)    tar xf $1    ;;
		     *.tar.zst)   zstd -d $1    ;;      
		     *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
command_not_found_handler () {
	echo "\e[1;31mNYAAAA, NO SUCH COMMAND!!\n"
	mpv ~/dev/git/dotfiles/na.mp3 > /dev/null 2>&1 &
	# kitty +kitten icat --align=left ~/dev/git/dotfiles/neco-arc.gif

}
export PATH=$PATH:~/sh/
echo "Visit my website https://erizo.cc , I think it's really cool!!\n" | lolcat
ls
