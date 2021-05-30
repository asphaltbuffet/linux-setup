# linux-setup
Personal repo for home setup and restoration on new machines. All instructions assume Ubuntu/LinxMint system.

## Prerequisite installation
### zsh
`sudo apt-get update`\
`sudo apt-get install zsh`

### oh-my-zsh
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

_further information: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)_

### zsh-autosuggestions
`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

_further information: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)_

### zsh-syntax-highlighting
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

_further information: [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)_

### the-fuck
`sudo apt update`\
`sudo apt install python3-dev python3-pip python3-setuptools`\
`sudo pip3 install thefuck`

_further information: [thefuck](https://github.com/nvbn/thefuck)_

### k
`git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k`

_further information: [k](https://github.com/supercrabtree/k)_

### zsh-z
`git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z`

_further information: [zsh-z](https://github.com/agkozak/zsh-z)_

### spaceship-prompt
`git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1`\
`ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`

_further information: [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)_

## Configuration
Manually copy the `.zshrc` file to `~/.zshrc`.

Will likely make a script to link this at a later point.
### changes
- change date format (in history)
- display time in prompt
- add plugins
- change theme
