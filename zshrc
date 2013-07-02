# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="blinks"
# ZSH_THEME="agnoster-chap"
ZSH_THEME="flazz-chap"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew cap github lein osx rails rake ruby safe-paste bundler capistrano scala sbt lein)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# export PATH=$PATH:~/bin:~/.cabal/bin
export PATH=$PATH:~/bin
# export GEM_HOME='/usr/local/Cellar/gems/1.8'
# export VIM_APP_DIR=/Applications

if [ "`uname`" = "Darwin" ]; then
  compctl -f -x 'p[2]' -s "`/bin/ls -d1 /Applications/*/*.app /Applications/*.app | sed 's|^.*/\([^/]*\)\.app.*|\\1|;s/ /\\\\ /g'`" -- open
  alias run='open -a'
fi

export EDITOR="mvim -f"
# export EDITOR="subl -nw"
# export EDITOR="emacsclient -c"

export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
alias e=$EDITOR
# alias emacs="/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw"

alias idea="/Applications/IntelliJ\ IDEA\ 12.app/Contents/MacOS/idea"

. `brew --prefix`/etc/profile.d/z.sh

# set brightness for internal display
alias photob="brightness -d 0 0.834"
# set brightness for the thunderbolt display
alias photobt="brightness -d 0 0.843748"
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

eval `keychain --eval --inherit any --quiet`
