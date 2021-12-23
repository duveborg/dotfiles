echo "1. Setting Up homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "setting up symlinks"
cd ~
ln -fs  ~/dotfiles/Brewfile
ln -fs  ~/dotfiles/zsh/zshrc .zshrc
ln -fs  ~/dotfiles/gitconfig .gitconfig
ln -fs  ~/dotfiles/gitignore .gitignore

echo "2. Installing some useful things using brew"
brew bundle

echo "3. install prompt with nvm"
npm install -g pure-prompt
npm install -g typescript

touch ~/.zsh_history

echo "4. Change default shell"
chsh
