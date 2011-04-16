#export JAVA_HOME=/usr/lib/jvm/jdk1.6.0_22
#export JDK_HOME=/usr/lib/jvm/jdk1.6.0_22
#export GRADLE_HOME="$HOME/dev/gradle"
#export GROOVY_HOME="$HOME/dev/groovy"
#export ANT_HOME="$HOME/dev/ant"
#
##export PATH="$PATH:$HOME/bin:$HOME/local/bin:$GRADLE_HOME/bin:$ANT_HOME/bin"
#export PATH="$PATH:$HOME/bin:$HOME/local/bin:$GRADLE_HOME/bin:$ANT_HOME/bin"

# Initialize colors.
autoload -U colors
colors

export GPGKEY=4D72C4DE
export GREP_COLORS='ms=01;34:mc=01;34:sl=:cx=:fn=33:ln=37:bn=37:se=37'
export GREP_OPTIONS="--color=auto" 
# Allow for functions in the prompt.
setopt PROMPT_SUBST
 
# Autoload zsh functions.
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)
 
# Enable auto-execution of functions.
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions
 
# Append git functions needed for prompt.
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'
 
# Set the prompt.
HOST_FOR_PROMPT=''
HOST=`hostname`
if [[ $HOST != *cwatson-desktop* ]];
then
  HOST_FOR_PROMPT=$'%F{red}[%m]%f '
fi
ROOT_STAR=$'%(!.%F{yellow}\u2605%f .)'
#BOLD_WORKING_DIR=$'%B%~%b'
WORKING_DIR=$'%~'
EXIT_STATUS_INDICATOR=$'%(?.. %F{red}\u2718%f)'
#EXIT_STATUS_INDICATOR=$'%(?.%F{green}\u2714%f.%F{red}\u2718%f)'
PROMPT=$'$ROOT_STAR$HOST_FOR_PROMPT%F{blue}$WORKING_DIR%f$(prompt_git_info)$EXIT_STATUS_INDICATOR '
#PROMPT=$'$ROOT_STAR%{${fg[blue]}%}%B%~%b$(prompt_git_info)%{${fg[default]}%} %(?.%F{green}\u2714%f.%F{red}\u2718%f) '


# make sure we're in an xterm!
case $TERM in (xterm*|rxvt)
    precmd () { print -Pn "\e]0;%n@%m: %~\a" }
    preexec () { print -Pn "\e]0;%n@%m: $1\a" }
    ;;
esac

#watch=(notme)
watch=all
WATCHFMT='%n %a at %t %w from %M'

# The following lines were added by compinstall
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/cwatson/.zshrc'

autoload zmv
autoload -U compinit
compinit -u
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob nomatch notify
#unsetopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
bindkey ' ' magic-space    # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
