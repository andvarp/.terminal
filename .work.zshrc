# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/josvarga/.oh-my-zsh

# Theme
ZSH_THEME="agnoster"

# Plugins
plugins=(git dirhistory node npm sudo chucknorris)

# Run oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Add Z script
. ~/z.sh

# Specific env variables

# Add NVM script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Dotnet core env variables
export ASPNETCORE_ENVIRONMENT=Development

# User configuration

DEFAULT_USER="josvarga"
DEFAULT_ENV="work"
