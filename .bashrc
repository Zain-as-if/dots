#
# ~/.bashrc
#

export TZ="UTC"
export FZF_DEFAULT_OPTS=" \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias icat='kitten icat'

# Alias for configs
alias hconfig='vim ~/.config/hypr/hyprland.conf'
alias hpconfig='vim ~/.config/hypr/hyprpaper.conf'
alias wconfig='sudo vim /etc/xdg/waybar/config.jsonc'
alias wsconfig='sudo vim /etc/xdg/waybar/style.css'
alias sconfig='vim ~/.config/starship.toml'

PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/zain/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/zain/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/zain/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/zain/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export FLASK_APP=run.py
export FLASK_DEBUG=1	

eval "$(zoxide init --cmd cd bash)"
