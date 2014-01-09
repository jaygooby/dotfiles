export CLICOLOR=1
export LC_CTYPE=en_GB.UTF-8

export PATH=~/bin:$PATH

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then

    #eval "`dircolors -b`"
    alias less='less -R'

    export dreamhost='charangadh@code.charanga.com'
    export conga='deploy@192.168.18.13'
    export bongo='deploy@staging.ir.charanga.com'
    export live='deploy@ir.charanga.com'
    export sql='deploy@mysql.ec2.charanga.com'
    export millionaire='deploy@www.millionaireforschools.co.uk'
    alias dreamhost='ssh $dreamhost'
    alias conga='ssh $conga'
    alias bongo='ssh $bongo'
    alias live='ssh $live'
    alias sql='ssh $sql'
    alias millionaire='ssh $millionaire'
    alias gst='git status'
    alias gd='git diff'
    alias gdt='git difftool'

    export EDITOR=vim

    # don't "wuff wuff" and listen for control c, etc
    #alias screen='TERM=screen screen'

    # coloured grep results please
    export GREP_OPTIONS='--color=auto' 
    export GREP_COLOR='7;35'

    # syntax highlighting pager
    #- () {
    #  /usr/share/vim/vim*/macros/less.sh "$*"
    #}

    #TERM=linux
    if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
    fi

    # git completion and prompts
    source ~/.git-completion.sh
    PS1='\h:\[\033[0;33m\]\W$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$\[\033[0m\] '

    [[ -s "/Users/jay/.rvm/scripts/rvm" ]] && source "/Users/jay/.rvm/scripts/rvm"

    # keep dot files in git 
    # http://sursolid.com/managing-home-dotfiles-with-git-and-github
    alias homeconfig='git --git-dir=$HOME/.homeconfig.git/ --work-tree=$HOME'

    source ~/.local/bin/bashmarks.sh

    # retain history from all terminals
    # http://unix.stackexchange.com/a/48113
    export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
    export HISTSIZE=100000                   # big big history
    export HISTFILESIZE=100000               # big big history
    shopt -s histappend                      # append to history, don't overwrite it

    # Save and reload the history after each command finishes
    export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
