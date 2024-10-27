# set_workspace

Personal project. Script to automatically setup programming mac session with personal configurations.

## Launch

```
chmod +x setup.sh
./setup.sh
```

## Notes
#### Steps
brew<br>
Brew install tree<br>
default terminal zsh<br>
Set .zshrc and .vimrc<br>
Download atom and vscode if not already<br>
Install atom . and code . to access from terminal atom and vscode<br>
Install norminette42<br>
Install valgrind<br>
Install chrome, connect to your account for grepper<br>
Install f.lux

#### IDE
Use both atom and vscode to switch things up. Atom is good for simplicity while vscode is good for extra features.

Install all the VScode plugins:
- settings sync -> synchronize your plugins on different sessions with shift-Alt-D
- Suggested plugins specific to coding languages
- If working on server projects -> browser preview and debugger for chrome
- auto-close tag
- visual code integrated terminal
- Bracket pair colorizer
- path intellisense -> find file paths in between quotes
- gitlens -> compare code with ancient commits

Atom recommended plugins:
- atom-path-intellisense

#### Memory clean session
```
rm -rf ~/Library/**.42_cache_bak*; rm -rf ~/**.42_cache_bak; brew cleanup
find . -type f -size +100M
```

#### Bugs
If application should be installed but is nowhere to be found. Use brew list, to see it and brew uninstall to uninstall it, after relaunch the script.
