# Shell Setup

**ITerm2**  
Install [ITerm2]  

**Homebrew**  
Install [Homebrew]  
`brew update`  
`brew upgrade`  
`brew doctor`  
`sudo vim /etc/paths`  
>Edit to look like this:  
`/usr/local/bin`  
`/System/Cryptexes/App/usr/bin`  
`/usr/bin`  
`/bin`  
`/usr/local/sbin`  
`/usr/sbin`  
`/sbin`  

**Tree**  
`brew install tree`  

**Stow**  
`brew install stow`  

**Git**  
`brew install git`  
`brew tap microsoft/git`  
`brew install --cask git-credential-manager-core`  

**dotfiles**  
`cd ~/ && git clone https://github.com/yourpalmark/dotfiles.git`  

**Git**  
`cd ~/dotfiles && stow git`  

**Fish**  
`brew install fish`  
`sudo vim /etc/shells`  
>Add  
`/opt/homebrew/bin/fish`  

`chsh -s /opt/homebrew/bin/fish`  
`fish`  
`mv ~/.config/fish/ ~/Desktop/`  
`cd ~/dotfiles; and stow fish`  

**Oh My Fish**  
`curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish`  
`omf update`  
`omf install bass`  
`omf install sublime`  

**Theme**  
Install [Solarized for ITerm2]  
`brew install --cask font-meslo-lg-nerd-font`  
`omf install agnoster`  
Set ITerm2 font to `MesloLGM Nerd Font Mono` 10pt anti-aliased  

**Python**  
`brew install uv`  
`cd ~/.config/fish/; and mkdir completions`  
`echo 'uv generate-shell-completion fish | source' > ~/.config/fish/completions/uv.fish`  
`echo 'uvx --generate-shell-completion fish | source' > ~/.config/fish/completions/uvx.fish`  
`uv python install`  

**PostgreSQL**  
`brew search postgresql`  
`brew install postgresql@x`  

**Conda**  
`brew install --cask miniforge`  
`conda update conda`  
`conda update --all`  
`conda install -c conda-forge jupyterlab`  
`conda config --set auto_activate false`  
`conda init fish`  

**Java**  
Install the latest [Java JDK]  

**fzf**  
`brew install fzf`  
`/opt/homebrew/opt/fzf/install`  

**Vim**  
`brew install vim`  
`git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac`  
`cd ~/dotfiles; and stow vim`  
`vim`  
>`:PackUpdate`  

**Neovim**  
`brew install neovim`  
`cd ~/dotfiles; and stow nvim`  
`brew install neovim-remote`  

**Node**  
`brew install nvm`  
`mkdir ~/.nvm`  
`nvm install node`  
`nvm use node`  
`brew install corepack`  
`corepack enable`  
Use pnpm in projects  

**Bash**  
`cd ~/dotfiles; and stow bash`  

**Perl**  
Install [Perlbrew]  
`perlbrew init`  
`brew install berkeley-db`  
`perlbrew available`  
`perlbrew install perl-x.x.x`  
`perlbrew switch perl-x.x.x`  
`perlbrew install-cpanm`  

**Ag**  
`brew install the_silver_searcher`  

**tmux**  
`brew install tmux`  
Install [tmux Plugin Manager]  
`cd ~/dotfiles; and stow tmux`  
`tmux`  
Press `prefix + I` to install plugins  

**go**  
`brew install go`  
`mkdir -p ~/go/bin`  

**Docker**  
`brew install docker --cask`  

<!---
**Lua**  
`mkdir ~/.luaver`  
`git clone https://github.com/DhavalKapil/luaver.git ~/.luaver`  
`luaver install x.x.x`  
`luaver use x.x.x`  
`set OSVersion (sw_vers -productVersion)`  
`export MACOSX_DEPLOYMENT_TARGET=$OSVersion`  
`luaver install-luajit x.x.x`  
`luaver use-luajit x.x.x`  
-->

**gcloud**  
`brew install --cask google-cloud-sdk`  

**codex**  
`brew install --cask codex`  

   [ITerm2]: https://www.iterm2.com/
   [Solarized for ITerm2]: https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
   [Homebrew]: https://brew.sh/
   [Java JDK]: https://www.oracle.com/in/java/technologies/downloads/
   [Perlbrew]: https://perlbrew.pl/
   [Oh My Fish]: https://github.com/oh-my-fish/oh-my-fish
   [tmux]: https://github.com/tmux/tmux
   [tmux Plugin Manager]: https://github.com/tmux-plugins/tpm
