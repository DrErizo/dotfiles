ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload -U colors && colors
PS1="%{$fg[cyan]%}%~ %{$fg[blue]%}>%b "

# Tab Completion
autoload -U compinit
zstyle ':completion:*' menu select 
zstyle ':completion:*' completer _complete _correct _approximate
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
colors
_comp_options+=(globdots) 
compinit

setopt correct
setopt extendedglob
setopt nocaseglob
setopt rcexpandparam
setopt numericglobsort
setopt nobeep
setopt histignorealldups
setopt autocd

export  _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=nvim
export TERMINAL=alacritty
export BROWSER=firefox
export FILEMAN=pcmanfm


#os 
alias sex="startx"
alias fm="ranger"
alias ll='exa -l --color=always --icons --all '
alias ls='exa -l --color=always --icons --no-permissions'
alias mf="mkf"
alias md="mkdir"
alias sus="paru -Syyu ; poweroff"
alias rbt="sudo reboot"
alias :q="exit"


#paru
alias prs="paru -S"
alias pss="paru -Ss"
alias prr="paru -Rscn"



# git 
alias g="git"
alias gs="git status"
alias gcm="git commit -a -m"
alias ga="git add"
alias gpl="git pull"
alias gp="git push"
alias gi="git init"
alias gc="git clone"

# downloading from yt
alias ytdl="youtube-dl --format mp4"
alias ytmp3="youtube-dl -x --audio-format mp3"
alias ytopus="youtube-dl -x --audio-format opus"
alias ytbest="youtube-dl --format bestvideo+bestaudio"


#misc
alias nf="neofetch"
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
	echo "NYAAAA, NO SUCH COMMAND!!"
	mpv ~/dev/git/systembackup/na.mp3 > /dev/null 2>&1 &

}
