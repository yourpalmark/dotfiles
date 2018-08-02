# Theme
set -g theme_color_scheme solarized
set -g theme_nerd_fonts yes

# nvm
set -Ux NVM_DIR ~/.nvm

# Perlbrew
set PATH ~/perl5/perlbrew/bin $PATH
. ~/perl5/perlbrew/etc/perlbrew.fish

# OpenResty
set PATH /usr/local/openresty/nginx/sbin $PATH
set PATH /usr/local/openresty/bin $PATH
set PATH /usr/local/openresty/luajit/bin $PATH

# Neovim Remote
set PATH ~/Library/Python/3.7/bin $PATH
