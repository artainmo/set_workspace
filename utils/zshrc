#Use norminette command when necessary
alias norminette="~/.norminette/norminette.rb"

#For s19 PATH for brew and python3
PATH=/Users/$USER/.brew/bin:/usr/local/bin:/usr/bin:/bin:/
#For other computers if above does not work
export PATH=$PATH:/opt/homebrew/bin
  
#Use code . in terminal to open vscode with current directory
code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}
