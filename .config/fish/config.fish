#
# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
# A smart and user-friendly command line
# https://fishshell.com/

starship init fish | source # https://starship.rs/
zoxide init fish | source # 'ajeetdsouza/zoxide'

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings
# set -U LANG en_US.UTF-8
# set -U LC_ALL en_US.UTF-8

set -Ux BAT_THEME Catppuccin-mocha # 'sharkdp/bat' cat clone
set -Ux EDITOR nvim # 'neovim/neovim' text editor
set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux PAGER "~/.local/bin/nvimpager" # 'lucc/nvimpager'
set -Ux VISUAL nvim
set -Ux EXA_STANDARD_OPTIONS --long --all

# FZF 
set -U FZF_CTRL_R_OPTS --reverse
set -U FZF_TMUX_OPTS -p

# golang - https://golang.google.cn/
fish_add_path $GOPATH/bin

set -x GOROOT /usr/local/go
set -x PATH $PATH $GOROOT/bin

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

fish_add_path $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin/
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $HOME/.config/bin # my custom scripts

function fish_user_key_bindings
    bind \c] fzf_ghq # Ctrl-]
    bind \cr fzf_history # Ctrl-r
    bind \cj fzf_z # Ctrl-j
    bind \co fzf_file # Ctrl-f
end
