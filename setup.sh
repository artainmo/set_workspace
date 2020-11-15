#zsh as default terminal
if [ $SHELL != '/bin/zsh' ]; then
echo setting zsh as default terminal
chsh -s /bin/zsh
fi

#Install atom
ls /Applications/Atom.app &>/dev/null
if [ $? -ne 0 ]; then
echo installing atom...
brew cask install atom &>/dev/null
fi
ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom &>/dev/null #symbolic link to be able to use atom in terminal, normally already done by atom at installation

#VScode download
ls /Applications/Visual\ Studio\ Code.app &>/dev/null
if [ $? -ne 0 ]; then
echo installing vscode...
brew cask install visual-studio-code
fi

#Install google chrome
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --version &>/dev/null
if [ $? -ne 0 ]; then
echo Installing google chrome...
brew cask install google-chrome &>/dev/null
fi

ls /Applications/Flux.app &>/dev/null
if [ $? -ne 0 ]; then
echo intalling f.lux...
brew cask install flux
fi

#norminette download
ls ~/.norminette &>/dev/null #test if norminette directory exists, $? takes exit status last executed program, if it is not equal to 0 the command failed because program does not exist
if [ $? -ne 0 ]; then
git clone https://github.com/42Paris/norminette.git ~/.norminette/
cd ~/.norminette/
bundle
cd -
fi

ls /usr/local/Cellar/valgrind/ &>/dev/null
if [ $? -ne 0 ]; then
brew tap LouisBrunner/valgrind #Add git repository to brew repositories
brew install --HEAD LouisBrunner/valgrind/valgrind
fi

#Config zsh and vim
echo configuring zsh and vim...
cat utils/zshrc > ~/.zshrc
cat utils/vimrc > ~/.vimrc

#tree command
tree &>/dev/null
sleep 1
if [ $? -ne 0 ]; then
echo installing tree...
brew install tree &>/dev/null #redirect stdin and stderr to hide output
fi
