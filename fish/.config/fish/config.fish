if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Key Bindings
set -g fish_key_bindings fish_default_key_bindings

# Theme
set -g theme_color_scheme solarized
set -g theme_nerd_fonts yes
set -g fish_color_autosuggestion 555\x1ebrblack
set -g fish_color_cancel \x2dr
set -g fish_color_command 005fd7
set -g fish_color_comment 990000
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end 009900
set -g fish_color_error ff0000
set -g fish_color_escape 00a6b2
set -g fish_color_history_current \x2d\x2dbold
set -g fish_color_host normal
set -g fish_color_host_remote yellow
set -g fish_color_normal normal
set -g fish_color_operator 00a6b2
set -g fish_color_param 00afff
set -g fish_color_quote 999900
set -g fish_color_redirection 00afff
set -g fish_color_search_match white\x1e\x2d\x2dbackground\x3dbrblack
set -g fish_color_selection white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
set -g fish_color_status red
set -g fish_color_user brgreen
set -g fish_color_valid_path \x2d\x2dunderline
set -g fish_pager_color_completion \x1d
set -g fish_pager_color_description B3A06D\x1eyellow
set -g fish_pager_color_prefix normal\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set -g fish_pager_color_progress brwhite\x1e\x2d\x2dbackground\x3dcyan
set -g fish_pager_color_selected_background \x2dr

# nvm
set -gx NVM_DIR $HOME/.nvm
bass source (brew --prefix nvm)/nvm.sh

# Perlbrew
set PATH ~/perl5/perlbrew/bin $PATH
source ~/perl5/perlbrew/etc/perlbrew.fish

# uv
set PATH ~/.local/bin $PATH

# Go
set -gx GOPATH $HOME/go
set -gx GOROOT (brew --prefix golang)/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH

#gcloud
source (brew --prefix)/Caskroom/gcloud-cli/latest/google-cloud-sdk/path.fish.inc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
        source "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniforge/base/bin" $PATH
    end
end
# <<< conda initialize <<<

