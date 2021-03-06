# linux-setup
Personal repo for home setup and restoration on new machines. All instructions assume Ubuntu/LinuxMint system.

## Prerequisite installation
### zsh
`sudo apt-get update`\
`sudo apt-get install zsh`

### oh-my-zsh
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

_further information: [oh-my-zsh]_

### zsh-autosuggestions
`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

_further information: [zsh-autosuggestions]_

### zsh-syntax-highlighting
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

_further information: [zsh-syntax-highlighting]_

### zsh-z
`git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z`

_further information: [zsh-z]_

### spaceship-prompt
`git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1`\
`ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`

_further information: [spaceship-prompt]_

### fzf
`git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`\
`~/.fzf/install --all`

_further information: [fzf]_

### autoupdate  (plugins)
`git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate`

_further information: [autoupdate-oh-my-zsh-plugins]_

## Updating

`upgrade_oh_my_zsh_custom`\
`cd ~/.fzf && git pull && ./install --all`

## Optional

## Configuration
Manually copy the `.zshrc` file to `~/.zshrc`.

Will likely make a script to link this at a later point.

### changes
- change date format (in history)
- display time in prompt
- add plugins
- change theme

[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
[zsh-autosuggestions]: https://github.com/zsh-users/zsh-autosuggestions
[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
[zsh-z]: https://github.com/agkozak/zsh-z
[spaceship-prompt]: https://github.com/denysdovhan/spaceship-prompt
[autoupdate-oh-my-zsh-plugins]: https://github.com/TamCore/autoupdate-oh-my-zsh-plugins
[fzf]: https://github.com/junegunn/fzf#using-git
