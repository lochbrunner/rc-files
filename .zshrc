export ZSH="/home/matthias/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh
DEFAULT_USER=matthias

# rust
source $HOME/.cargo/env

PATH=$PATH:/home/matthias/workspace/github/FlameGraph
PATH=$PATH:/usr/local/cuda/bin

export CUDNN_LIBRARY_PATH=/usr/local/cudnn/lib64
export CUDNN_INCLUDE_PATH=/usr/local/cudnn/include

CUDA_BIN_PATH=/usr/local/cuda/bin

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

alias c='code .'
alias fd=fdfind
