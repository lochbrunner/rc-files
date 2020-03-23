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

alias c='code .'
alias fd=fdfind

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

mkgif() {
  palette=/tmp/$1:r:t.png
  ffmpeg -i $1 -filter_complex "[0:v] palettegen" $palette
  ffmpeg -i $1 -i $palette -filter_complex "[0:v][1:v] paletteuse" $1:r.gif
  rm $palette
}