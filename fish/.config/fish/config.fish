if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Theme
set -g theme_color_scheme solarized
set -g theme_nerd_fonts yes

# nvm
set -Ux NVM_DIR ~/.nvm
bass source (brew --prefix nvm)/nvm.sh

# Perlbrew
set PATH ~/perl5/perlbrew/bin $PATH
source ~/perl5/perlbrew/etc/perlbrew.fish

# pip --user bin
set PATH ~/Library/Python/3.7/bin $PATH

# Go
set -x -U GOPATH $HOME/go
set -x -U GOROOT /usr/local/opt/go/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH

#gcloud
source (brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# Anaconda
if not type -q __fish_prompt_orig
    eval /opt/homebrew/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
