# Theme
set -g theme_color_scheme solarized
set -g theme_nerd_fonts yes

# nvm
set -Ux NVM_DIR ~/.nvm
bass source (brew --prefix nvm)/nvm.sh

# Perlbrew
set PATH ~/perl5/perlbrew/bin $PATH
. ~/perl5/perlbrew/etc/perlbrew.fish

# pip --user bin
set PATH ~/Library/Python/3.7/bin $PATH

# Go
set -x -U GOPATH $HOME/go
set -x -U GOROOT /usr/local/opt/go/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH

# OpenResty
set PATH /usr/local/openresty/nginx/sbin $PATH
set PATH /usr/local/openresty/bin $PATH
set PATH /usr/local/openresty/luajit/bin $PATH
