# Add user configurations here
# For HyDE to not touch your beloved configurations,
# we added a config file for you to customize HyDE before loading zshrc
# Edit $ZDOTDIR/.user.zsh to customize HyDE before loading zshrc

#  Plugins 
# oh-my-zsh plugins are loaded  in $ZDOTDIR/.user.zsh file, see the file for more information

#  Aliases 
# Override aliases here in '$ZDOTDIR/.zshrc' (already set in .zshenv)

# # Helpful aliases
# alias c='clear'                                                        # clear terminal
# alias l='eza -lh --icons=auto'                                         # long list
# alias ls='eza -1 --icons=auto'                                         # short list
# alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
# alias ld='eza -lhD --icons=auto'                                       # long list dirs
# alias lt='eza --icons=auto --tree'                                     # list folder as tree
# alias un='$aurhelper -Rns'                                             # uninstall package
# alias up='$aurhelper -Syu'                                             # update system/package/aur
# alias pl='$aurhelper -Qs'                                              # list installed package
# alias pa='$aurhelper -Ss'                                              # list available package
# alias pc='$aurhelper -Sc'                                              # remove unused cache
# alias po='$aurhelper -Qtdq | $aurhelper -Rns -'                        # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
# alias vc='code'                                                        # gui code editor
# alias fastfetch='fastfetch --logo-type kitty'

# # Directory navigation shortcuts
# alias ..='cd ..'
# alias ...='cd ../..'
# alias .3='cd ../../..'
# alias .4='cd ../../../..'
# alias .5='cd ../../../../..'

# # Always mkdir a path (this doesn't inhibit functionality to make a single dir)
# alias mkdir='mkdir -p'

# unset -f command_not_found_handler # Uncomment to prevent searching for commands not found in package manager
alias f='fastfetch'
alias n='neofetch'
alias ut='brave  https://youtube.com & disown'
alias chat='firefox --new-window  https://chatgpt.com/ & disown'
alias music='firefox --new-window https://music.apple.com/in/home & disown'
alias temp='firefox --new-window "https://chatgpt.com/?temporary-chat=true" & disown'
alias class='firefox -P "default-release" --new-tab "https://classroom.google.com/u/2/?pli=1" & disown'
alias jarvis='OLLAMA_NUM_CTX=2048 ollama run qwen2.5:3b'
alias journal='firefox --new-window "https://www.notion.so/Journal-17289d711e8b80099470c1abc4363d29" & disown'
alias todo='firefox --new-window "https://app.todoist.com/app/today" & disown'
alias leetcp='firefox --new-window https://leetcode.com/problemset & disown'
alias leet='brave --new-window https://leetcode.com/problemset & disown'
#---------------------------------------------------conda initialize--------------------------------
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    fi
fi
unset __conda_setup
#-----------------------------------------------------------------------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
