export ZSH="/root/.oh-my-zsh"
ZSH_THEME="linux"
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)
source $ZSH/oh-my-zsh.sh

# date
export TZ='Asia/Shanghai'

# enable history time
export HISTTIMEFORMAT="%F %T "

# zsh-autosuggestions
# [fix] https://github.com/zsh-users/zsh-autosuggestions/issues/560#issuecomment-695993640
TERM=xterm-256color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

sync-configs() {
    wget -O ~/.vimrc https://raw.githubusercontent.com/rea1shane/vimrc/main/.vimrc
    wget -O ~/.oh-my-zsh/custom/themes/linux.zsh-theme https://raw.githubusercontent.com/rea1shane/zsh-theme/main/linux.zsh-theme
}
