# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/yelo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="honukai"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  macos
  node
  npm
  nvm
  yarn
  autojump
  docker
  kubectl
  kube-ps1
)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# aliases

## 文件按大小排序，lbys = ls by size
alias lbys='ls -alhS'
## 文件按时间排序，lbyt = ls by time
alias lbyt='ls -alht'

## 上一条命令
alias last='fc -ln -1'

## 目录占用空间
alias dsize="du -h -d 1"

## 生成随机密码
alias random="cat /dev/urandom | LC_CTYPE=C tr -dc '0-9a-zA-Z' | fold -w 256 | head -n 1"

## 复制粘贴
alias pbcopy="xsel --clipboard --input"
alias pbpaste="xsel --clipboard --output"

## HEX
alias hex="xxd"
alias hexf="cat $1 | hex"
alias bin="xxd -p -r"
alias binf="cat $1 | bin"

## 网络
alias ifconfig="ip -c a"

## http(s) proxy
alias hp="HTTP_PROXY=http://127.0.0.1:8096 HTTPS_PROXY=http://127.0.0.1:8096 NO_PROXY=localhost,127.0.0.0/8,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24,::1 http_proxy=http://127.0.0.1:8096 https_proxy=http://127.0.0.1:8096"

## check ip
alias ip="curl -L https://postman-echo.com/ip"

## proxychains4
#alias proxychains4="proxychains4 -f /usr/local/etc/proxychains4.conf"

# export env
## crontab
export VISUAL=vim

## thefuck
eval $(thefuck --alias)

## nodejs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NODEJS_ORG_MIRROR="https://npm.taobao.org/mirrors/node"
#export NVM_NODEJS_ORG_MIRROR="https://npm.taobao.org/mirrors/node"
export NVM_NODEJS_ORG_MIRROR="https://mirrors.tencent.com/nodejs-release"
export PHANTOMJS_CDNURL="https://npm.taobao.org/dist/phantomj"
export ELECTRON_MIRROR="https://npm.taobao.org/mirrors/electron/"
export PUPPETEER_DOWNLOAD_HOST="https://npm.taobao.org/mirrors"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

## homebrew
#export PATH="/usr/local/sbin:$PATH"
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tencent.com/homebrew-bottles

## gpg
GPG_TTY=$(tty)
export GPG_TTY

### golang
export GOPATH="$HOME/Repositories/Golang"
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"
export GO111MODULE="on"
export GOHACK="$HOME/Documents/Project/Gohack"
#alias go="hp go"

## rust
source $HOME/.cargo/env

## cmake
export CC="/usr/bin/gcc"
export CXX="/usr/bin/g++"
export CMAKE_MAKE_PROGRAM="/usr/bin/make"
export CMAKE_C_COMPILER="/usr/bin/gcc"
export CMAKE_CXX_COMPILER="/usr/bin/g++"

## wasm
alias emsdkenv="source \"$HOME/repositories/forks/emscripten-core/emsdk/emsdk_env.sh\""

## kubernetes
export KUBECONFIG=$HOME/.kube/config

## python
export PYTHON_BUILD_MIRROR_URL_SKIP_CHECKSUM=1
export PYTHON_BUILD_MIRROR_URL="https://npm.taobao.org/mirrors/python/"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
