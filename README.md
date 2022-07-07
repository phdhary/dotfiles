# dotfiles

On fedora 36 which configure:

- Oh My Zsh
- Bash It
- Sway
- Swaylock
- Swaynag
- Waybar
- Vim
- Ranger
- Rofi
- Avizo
- Neovim setup script
- Some alias and env var

## How to use
- Make a git alias
```
git config --global alias.dot '!git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```
- Bare clone this repo
```
git clone --bare https://github.com/phdhary/dotfiles.git $HOME/.dotfiles
```
- Force checkout
```
git dot checkout -f
```
[Article I read to manage dotfiles](https://dev.to/bowmanjd/store-home-directory-config-files-dotfiles-in-git-using-bash-zsh-or-powershell-the-bare-repo-approach-35l3) 
