if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Theme
set -g theme_color_scheme solarized
set -g theme_nerd_fonts yes

# nvm
set -x -U NVM_DIR $HOME/.nvm
bass source (brew --prefix nvm)/nvm.sh

# Perlbrew
set PATH ~/perl5/perlbrew/bin $PATH
source ~/perl5/perlbrew/etc/perlbrew.fish

# pyenv
set -x -U PYENV_ROOT $HOME/.pyenv
pyenv init - | source

# Go
set -x -U GOPATH $HOME/go
set -x -U GOROOT (brew --prefix golang)/libexec
set PATH $GOPATH/bin $GOROOT/bin $PATH

#gcloud
source (brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

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

# >>> JVM installed by coursier >>>
set -gx JAVA_HOME "$HOME/Library/Caches/Coursier/arc/https/github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.22%252B7/OpenJDK11U-jdk_x64_mac_hotspot_11.0.22_7.tar.gz/jdk-11.0.22+7/Contents/Home"
# <<< JVM installed by coursier <<<


# >>> coursier install directory >>>
set -gx PATH "$PATH:$HOME/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<

