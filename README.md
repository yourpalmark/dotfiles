# Shell Setup

**ITerm2**  
Install [ITerm2]  

**Homebrew**  
Install [Homebrew]  
`brew update`  
`brew upgrade`  
`brew doctor`  

**Git**  
`brew install git`  

**Tree**  
`brew install tree`  

**Stow**  
`brew install stow`  

**Python**
`brew install python`
`cd /usr/local/bin/ && ln -s python3 python`

**dotfiles**
`git clone git@github.com:yourpalmark/dotfiles.git ~/`  

**Git**
`cd ~/dotfiles && stow git`  

**Fish**  
`brew install fish`  
`sudo vim /etc/shells`  
>Add  
`/usr/local/bin/fish`  

`cd ~/dotfiles && stow fish`  

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
Install [Vundle]  
Setup [YouCompleteMe]  
`cd ~/dotfiles && stow vim`  

**Ag**  
`brew install the_silver_searcher`  

**tmux**  
Install [tmux]  
Install [tmux Plugin Manager]  
Install [tmux Resurrect]  
`cd ~/dotfiles && stow tmux`  

   [ITerm2]: https://www.iterm2.com/
   [Solarized for ITerm2]: https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
   [Homebrew]: https://brew.sh/
   [Oh My Fish]: https://github.com/oh-my-fish/oh-my-fish
   [tmux]: https://github.com/tmux/tmux
   [tmux Plugin Manager]: https://github.com/tmux-plugins/tpm
   [tmux Resurrect]: https://github.com/tmux-plugins/tmux-resurrect
   [Vundle]: https://github.com/VundleVim/Vundle.vim
   [YouCompleteMe]: https://github.com/Valloric/YouCompleteMe
