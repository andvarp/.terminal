# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/josvarga/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dirhistory node npm sudo chucknorris)

source $ZSH/oh-my-zsh.sh

# Add Z script
. ~/z.sh

# Add NVM script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

DEFAULT_USER="josvarga"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# -------------------------------------------------------------------
# ALIAS
# -------------------------------------------------------------------
# TheFuck
eval $(thefuck --alias)

alias tree='find . -print | sed -e "s;[^/]*/;├── ;g;s;____|; |;g"'
alias cls=clear
alias ~='cd ~'
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias editZsh='subl ~/.zshrc'
alias edit='subl'
alias new='touch'
alias la='ls -la'
alias reload='. ~/.zshrc && cowsay "Reloaded"'
alias dsremove="find . -name '*.DS_Store' -type f -delete"
alias svnremove="find . -type d -name .svn -exec rm -rf {} \;"
alias lockremove="find . -type f -name lock -exec rm -rf {} \;"
alias iosSim="open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'	
alias webServer='open http://localhost:8000/ && python -m SimpleHTTPServer 8000'

#Install this https://github.com/jingweno/ccat/
alias cat='ccat'

# Grunt shortcuts
alias gr='grunt'
alias grs='grunt serve'
alias grz='grunt zip'
alias grb='grunt build'

# Git shortcuts
alias gcl='git clone'
alias gs='git status'
alias gps='git push'
alias gpl='git pull'
alias gc='git commit -am '
alias gck='git checkout'
alias gckd='gck develop'
alias gcks='gck stage'
alias gm='git merge'

# -------------------------------------------------------------------
# FUNCTIONS
# -------------------------------------------------------------------

# Create a dir and `cd` into it.
function dir {
    mkdir -pv $@ && cd $_
}

# Convert Video
# Needs ffmpeg installed
# Usage convertVideo in.mp4 out
function convertVideo {
	ffmpeg -i "$1" -movflags faststart -vframes 1 -f image2 "$2"'-poster.jpg' -acodec copy -vcodec libx264 "$2"'.mp4'
}

# Convert all videos on folder
# Needs convertVideo function to run
# Usage 1, cd VideoFolder && convertAllVideos
# Usage 2, cd VideoFolder && convertAllVideos outputFolder
function convertAllVideos {
	BASEFOLDER='./'
	OUTFOLDER='output/'
	if [ "$1" ]
	then
		OUTFOLDER="$1"'/'
	fi
	mkdir -p ${BASEFOLDER}${OUTFOLDER}
	for i in *.mp4; do convertVideo "$i" ${BASEFOLDER}${OUTFOLDER}"${i%.mp4}"; done
	# for i in *.mp4; do echo "$i" ${OUTFOLDER}"${i%.mp4}"; done
}

# Math on terminal
function = {
    echo "$@ = $(($@))"
}
function / {
    echo "$@/2 = $(($@/2))"

}

# Clear terminal
cls