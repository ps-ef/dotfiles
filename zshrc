# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
# Set name of the theme to load.

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="risto"
ZSH_THEME="pi"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages colorize github jira vagrant virtualenv pip python zsh-autosuggestions git fzf)

# User configuration
export PATH=$HOME/.local/bin:$PATH

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi

# Custom ZSH
# Copy my public key to the pasteboard
alias pubkeyrsa="cat ~/.ssh/id_rsa.pub | xclip -selection c | printf '=> Public key copied to pasteboard.\n'"
alias pubkeyed25519="cat ~/.ssh/id_ed25519.pub | xclip -selection c | printf '=> Public key copied to pasteboard.\n'"
alias pyserver="python -m SimpleHTTPServer"
alias randpwd="echo -n $(openssl rand -hex 20) | xclip -i -selection c | printf '=> Random password copied to pasteboard\n'"

# convenience aliases for editing configs
alias vim='nvim'
alias ev='cd ~/.config/nvim && vim'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias ei='vim ~/.i3/config'
alias es='vim ~/.ssh/config'
alias ea='vim ~/.config/alacritty/alacritty.yml'

# alias for tmux
alias ta='tmux attach -t'
alias tnew='tmux new-session -s'
alias tls='tmux list-sessions'
alias tkill='tmux kill-session -t'

alias dell='xrandr --output HDMI1 --auto --right-of eDP1 --mode 2560x1440 && nitrogen --restore'
alias dell_dup='xrandr --output HDMI1 --auto --same-as eDP1 --mode 1920x1080 && nitrogen --restore'
alias hp='xrandr --output HDMI1 --auto --right-of eDP1 --mode 1920x1080 && nitrogen --restore'
alias office_dup='xrandr --output HDMI1 --auto --same-as eDP1 --mode 1920x1080 && nitrogen --restore'
alias office_right='xrandr --output HDMI1 --auto --right-of eDP1 --mode 1920x1080 && nitrogen --restore'

# alias for terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Golang
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Yarn
#export PATH="$PATH:`yarn global bin`"

# Rust
export PATH=/home/linhnguyen/.cargo/bin:$PATH
source $HOME/.cargo/env

# Anaconda2
export PATH=/home/linhnguyen/src/frameworks/anaconda2/bin:$PATH

# export PATH for gem ruby
#export PATH=/home/linhnguyen/.gem/ruby/2.7.0/bin:$PATH

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus

# Starship
eval "$(starship init zsh)"