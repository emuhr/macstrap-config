#########################
# General configuration #
#########################

# Export PATH
export PATH=/usr/local/bin:$HOME/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

# Put brew's ruby in front
export PATH=/usr/local/opt/ruby/bin:$PATH

# Use gnu tools instead
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

# Use atom as default editor
EDITOR="atom"

# Update the number of open files
ulimit -n 1000

# Add bash completion (for git and others)
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

###########
# Aliases #
###########

# Color ls
alias ls='pwd; ls --color=auto -ahF'

# Display as a list
alias ll='pwd; ls -1ah'

# Display the insides of a particular directory
alias lv='pwd; ls -R'

alias cf-bentley-dev='cf login -a https://api.sys.cf.portal-dev.bentleymotors.com -u emanuel.muhr@mhp.com -o Bentley-Development -s development'
alias cf-bentley-prod='cf login -a https://api.sys.cf.portal.bentleymotors.com -u emanuel.muhr@mhp.com'
alias cf-bentley-qa='cf login -a https://api.sys.cf.portal-dev.bentleymotors.com -u emanuel.muhr@mhp.com -o Bentley-QualityAssurance -s test'
alias cf-gravity-vehicle-dev='cf login -a https://api.sys.emea.vwapps.io -u emanuel.muhr@mhp.com -o Gravity -s vehicle-dev'
alias cf-gravity-business-dev='cf login -a https://api.sys.emea.vwapps.io -u emanuel.muhr@mhp.com -o Gravity -s business-dev'

###########################
# Oh-my-zsh configuration #
###########################

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# The ZSH theme to use
ZSH_THEME="jreese"

# The plugins to use in the zsh shell
#plugins=(atom git npm bower brew wd command-not-found common-aliases)
plugins=(atom git npm bower)

# Load the oh-my-zsh configuraiton file
source $ZSH/oh-my-zsh.sh

########################
# Gradle configuration #
########################

export GRADLE_OPTS="-Xmx2048m -Xms256m -XX:MaxPermSize=512m"

#####################
# NVM configuration #
#####################

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# export Google Chrome and Firefox binaries used for Karma tests as karma is not
# able to find the hombrew installed versions
export CHROME_BIN="~/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
export FIREFOX_BIN="~/Applications/Firefox.app/Contents/MacOS/firefox"

######################
# jEnv configuration #
######################

export PATH=$HOME/.jenv/bin:$PATH
eval "$(jenv init -)"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

fpath=(/usr/local/share/zsh-completions $fpath)

#############
# Java home #
#############
# set 1.8 for compatibility (e.g. gatling)
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

###############
# node 8 hack #
###############
export PATH="/usr/local/opt/node@8/bin:$PATH"

export TASTE_API_KEY=312118-testapp-HRM5EH2K

##############
# kubectl    #
############## 
export PATH=$HOME/bin:$PATH
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
