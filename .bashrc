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
alias hconfig='nvim ~/.config/hypr/hyprland.conf'
alias hpconfig='nvim ~/.config/hypr/hyprpaper.conf'
alias wconfig='cd ~/.config/waybar'
alias sconfig='nvim ~/.config/starship.toml'
alias nconfig='cd ~/.config/nvim'

alias singularity='singularity shell ~/Uni/opsys/xv6-tools-container/xv6-tools-container.sif'

alias slideshow1='feh --recursive --randomize --scale-down -D 1 --geometry 2560x1440'
alias slideshow2='feh --recursive --randomize --scale-down -D 2 --geometry 2560x1440'
alias slideshow3='feh --recursive --randomize --scale-down -D 3 --geometry 2560x1440'
alias slideshow5='feh --recursive --randomize --scale-down -D 5 --geometry 2560x1440'

alias autozslideshow1='feh --recursive --randomize -Z -D 1 --geometry 2560x1440'
alias autozslideshow2='feh --recursive --randomize -Z -D 2 --geometry 2560x1440'
alias autozslideshow3='feh --recursive --randomize -Z -D 3 --geometry 2560x1440'
alias autozslideshow5='feh --recursive --randomize -Z -D 5 --geometry 2560x1440'

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

# Created by `pipx` on 2024-11-27 01:12:32
export PATH="$PATH:/home/zain/.local/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
