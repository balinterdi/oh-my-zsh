# add code directory completion function to path
fpath=($ZSH/plugins/code $fpath)
autoload -U compinit
compinit -i

function c() {
  cd ~/code/$1;
}

