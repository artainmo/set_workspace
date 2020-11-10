#tree command
tree &>/dev/null
sleep 1
if [ $? -ne 0 ]; then
echo installing tree...
brew install tree &>/dev/null #redirect stdin and stderr to hide output
fi

#zsh as default terminal
if [ $SHELL != '/bin/zsh' ]; then
echo setting zsh as default terminal
chsh -s /bin/zsh
fi

#Install atom
atom -v &>/dev/null
sleep 1
if [ $? -ne 0 ]; then
echo installing atom...
brew cask install atom &>/dev/null
fi
ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom &>/dev/null #symbolic link to be able to use atom in terminal, normally already done by atom at installation 

#Install google chrome
brew cask install google-chrome &>/dev/null

#VScode download
code &>/dev/null
sleep 1
if [ $? -ne 0 ]; then
echo installing vscode
brew cask install visual-studio-code &>/dev/null
fi

#norminette download
norminette -v &>/dev/null #launch norminette command, $? takes exit status last executed program, if it is not equal to 0 the command failed because program does not exist
sleep 1 #wait one second is necessary for above program to end and set the env var $?
if [ $? -ne 0 ]; then
git clone https://github.com/42Paris/norminette.git ~/.norminette/
cd ~/.norminette/
bundle
cd -
fi

#Config zsh and vim
cat .zshrc > ~/.zshrc
cat .vimrc > ~/.vimrc
