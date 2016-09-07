#!/bin/bash
reset="\033[0m"
headline="\033[45m\033[1;37m"
dim="\033[2m"
pwd=$(pwd)

function task {
    printf "\n${headline} %s ${reset}\n" "$*"
}

function run {
    printf "> %s${dim}\n" "$*"
    eval $*
    printf "${reset}\n"
}

task 'Linking dotfiles…'
run 'ln -sfv $pwd/.zshrc ~'
run 'ln -sfv $pwd/.zpreztorc ~'
run 'ln -sfv $pwd/.gitconfig ~'

task 'Installing Homebrew…'
run '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
run brew tap caskroom/cask
run brew tap caskroom/fonts

task 'Installing desktop apps…'
run brew cask install google-chrome firefox opera atom slack harvest \
enpass sequel-pro dropbox spectacle 1clipboard shiori vlc

task 'Installing fonts…'
run brew cask install font-fira-code font-camingocode font-inconsolata \
font-anonymous-pro


task 'Installing (web) development setup…'
run brew install -v nginx mysql php70 dnsmasq
run echo 'address=/.dev/127.0.0.1' > $(brew --prefix)/etc/dnsmasq.conf
run echo 'listen-address=127.0.0.1' >> $(brew --prefix)/etc/dnsmasq.conf
run echo 'port=35353' >> $(brew --prefix)/etc/dnsmasq.conf
run brew services start dnsmasq
run sudo mkdir -v /etc/resolver
run sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/dev'
run sudo bash -c 'echo "port 35353" >> /etc/resolver/dev'
run sudo cp -vR $pwd/etc/nginx /etc

task 'Installing Atom packages/themes…'
run apm install emmet file-icons docblockr sort-lines todo-show \
pigments color-picker highlight-selected html-head-snippets pretty-json \
tool-bar git-control native-ui colornamer
