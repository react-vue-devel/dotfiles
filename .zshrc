# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="bruce"

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# HISTORY customizations:
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx brew thefuck)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
  export GIT_EDITOR='vim'
else
  export EDITOR='atom'
  export GIT_EDITOR='atom'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# for keychain ssh key management
eval `~/keychain/keychain --eval --agents ssh --inherit any id_rsa`

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# for brew path includes
path+='/usr/local/bin'
path+='/usr/local/sbin'
#export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# adding an appropriate PATH variable for use with MacPorts.
path+='/opt/local/bin'
path+='/opt/local/sbin'
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

#export the PATH
export PATH

# PYTHONPATH for correct use for ansible
export PYTHONPATH="~/Library/Python/2.7/lib/python/site-packages:/Library/Python/2.7/site-packages"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias home='ssh bruce@conecrazy.ca'
alias mac='ssh bruce@mac'
alias server='ssh bruce@server'
alias hack='ssh bruce@hack'
# aliases for fullscript servers
alias ca1='ssh ubuntu@ca1.ca-prd.full.rx'
alias lithium='ssh rancher@lithium.ca-prd.full.rx'
alias willet='ssh rancher@willet.ca-prd.full.rx'
alias toolbox-01='ssh toolbox-01.ca-stg.full.rx'
alias enron='ssh ubuntu@enron.glb.full.rx'
alias hw-natural='ssh ubuntu@hw-natural-medicines.glb.full.rx'
alias kafka-01='ssh ubuntu@kafka-01.glb.full.rx'
alias kafka-02='ssh ubuntu@kafka-02.glb.full.rx'
alias kafka-03='ssh ubuntu@kafka-03.glb.full.rx'
alias logman='ssh ubuntu@logman.glb.full.rx'
alias olive1='ssh ubuntu@olive1.glb.full.rx'
alias olive2='ssh ubuntu@olive2.glb.full.rx'
alias rancher_glb='ssh ubuntu@rancher.glb.full.rx'
alias t2gitlab='ssh ubuntu@t2gitlab.glb.full.rx'
alias toolbox-02='ssh toolbox-01.glb.full.rx'
alias bud='ssh ubuntu@bud.us-prd.full.rx'
alias fourroses='ssh ubuntu@fourroses.us-prd.full.rx'
alias pow='ssh ubuntu@pow.us-prd.full.rx'
alias quantum='ssh ubuntu@quantum.us-prd.full.rx'
alias shred='ssh ubuntu@shred.us-prd.full.rx'
alias xero='ssh ubuntu@xero.us-prd.full.rx'
alias sauna='ssh ubuntu@sauna.us-stg.full.rx'
alias daredevil='ssh ubuntu@daredevil.us-stg.full.rx'
alias heroes='ssh ubuntu@heroes.us-stg.full.rx'

eval $(thefuck --alias)

# for chruby setup
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh