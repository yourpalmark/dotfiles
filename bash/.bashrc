# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/bashrc.pre.bash" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/bashrc.pre.bash"
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


[[ -f "$HOME/fig-export/dotfiles/dotfile.bash" ]] && source "$HOME/fig-export/dotfiles/dotfile.bash"

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/bashrc.post.bash" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/bashrc.post.bash"
