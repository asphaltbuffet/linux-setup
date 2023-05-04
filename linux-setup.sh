#!/bin/bash

# Print a progress bar based on the current step and total steps
print_progress_bar() {
  local current_step=$1
  local total_steps=$2
  local filled_length=$(( 50 * current_step / total_steps ))
  local empty_length=$(( 50 - filled_length ))
  printf "\r\e[32mProgress: [\e[0m"
  printf '%0.s#' $(seq 1 $filled_length)
  printf '%0.s-' $(seq 1 $empty_length)
  printf "\e[32m] %d%%\e[0m" $(( 100 * current_step / total_steps ))
}

# linux-setup
# Personal repo for home setup and restoration on new machines.
# All instructions assume Ubuntu/LinuxMint system.

total_steps=9
current_step=1

print_progress_bar $current_step $total_steps

# Update package lists
sudo apt-get update
current_step=$(( current_step + 1 ))
print_progress_bar $current_step $total_steps

# Install zsh
sudo apt-get install zsh
current_step=$(( current_step + 1 ))
print_progress_bar $current_step $total_steps

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
current_step=$(( current_step + 1 ))
print_progress_bar $current_step $total_steps

# Install zsh plugins
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z.git $ZSH_CUSTOM/plugins/zsh-z
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins.git $ZSH_CUSTOM/plugins/autoupdate
current_step=$(( current_step + 1 ))
print_progress_bar $current_step $total_steps

# Install spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
current_step=$(( current_step + 1 ))
print_progress_bar $current_step $total_steps

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
current_step=$(( current_step + 1 ))
print_progress_bar $current_step $total_steps

# Create a backup of the existing .zshrc file
if [ -f ~/.zshrc ]; then
  cp ~/.zshrc ~/.zshrc.bak
  echo "A backup of the existing .zshrc file has been created at ~/.zshrc.bak"
fi
current_step=$(( current_step + 1 ))
print_progress_bar $current_step $total_steps

# Configure .zshrc
cat > ~/.zshrc <<EOL
# Add your customizations to .zshrc
export ZSH="\$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-z autoupdate)

source \$ZSH/oh-my-zsh.sh

# Additional customizations
# Change date format (in history)
HIST_STAMPS="mm/dd/yyyy"

# Display time in prompt
SPACESHIP_TIME_SHOW=true

# Add any other customizations below this line
EOL

current_step=$(( current_step + 1 ))
print_progress_bar $current_step $total_steps

echo -e "\nConfiguration complete. Restart your shell or run 'source ~/.zshrc' for the changes to take effect."
