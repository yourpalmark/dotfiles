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

**dotfiles**  
`cd ~/ && git clone git@github.com:yourpalmark/dotfiles.git`  

**Git**  
`cd ~/dotfiles && stow git`  

**Python**  
`brew install python`  
`cd /usr/local/bin/ && ln -s python3 python && ln -s pip3 pip`  

**fzf**  
`brew install fzf`  
`/usr/local/opt/fzf/install`  

**Fish**  
`brew install fish`  
`sudo vim /etc/shells`  
>Add  
`/usr/local/bin/fish`  

`chsh -s /usr/local/bin/fish`  
`fish`  
`cd ~/dotfiles; and stow fish`  

**Oh My Fish**  
`curl -L https://get.oh-my.fish | fish`  
`omf update`  

**Theme**  
Install [Solarized for ITerm2]  
`brew tap caskroom/fonts`  
`brew cask install font-meslo-nerd-font`  
`omf install agnoster`  
Set ITerm2 font to `MesloLGM Nerd Font` 10pt anti-aliased  

**Vim**  
`brew install vim --with-override-system-vi`  
`git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac`  
`cd ~/dotfiles; and stow vim`  
`vim`  
>`:PackUpdate`  

**Neovim**  
`brew install neovim`  
`cd ~/dotfiles; and stow nvim`  
`pip install --user --upgrade neovim-remote`  

**Node**  
`brew install nvm`  
`mkdir ~/.nvm`  
`omf install https://github.com/edc/bass`  
`nvm install node`
`nvm use node`
`brew install yarn --without-node`

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
`brew install libevent`  
Install [tmux]  
Install [tmux Plugin Manager]  
`cd ~/dotfiles; and stow tmux`  
`tmux source ~/.tmux.conf`  
Press `prefix + I` to install plugins  

**go**  
`brew install go`  
`mkdir -p ~/go/bin`  

   [ITerm2]: https://www.iterm2.com/
   [Solarized for ITerm2]: https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
   [Homebrew]: https://brew.sh/
   [Perlbrew]: https://perlbrew.pl/
   [Oh My Fish]: https://github.com/oh-my-fish/oh-my-fish
   [tmux]: https://github.com/tmux/tmux
   [tmux Plugin Manager]: https://github.com/tmux-plugins/tpm
