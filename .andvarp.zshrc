# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/andvarp/.oh-my-zsh

# Theme
ZSH_THEME="agnoster"

# Plugins
plugins=(git dirhistory node npm sudo chucknorris)

# Run oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Add Z script
. ~/z.sh

# Specific env variables

# Android Config
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

#Flutter
export PATH=$PATH:$HOME/development/flutter/bin

# User configuration

DEFAULT_USER="andvarp"
DEFAULT_ENV="andvarp"
