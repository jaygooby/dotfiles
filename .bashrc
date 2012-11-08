export CLICOLOR=1
export LC_CTYPE=en_GB.UTF-8

export PATH=~/bin:$PATH

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then

    #eval "`dircolors -b`"
    alias less='less -R'

    export conga='deploy@192.168.0.31'
    export bongo='deploy@staging.ir.charanga.com'
    export live='deploy@ir.charanga.com'
    alias conga='ssh $conga'
    alias bongo='ssh $bongo'
    alias live='ssh $live'

    # don't "wuff wuff" and listen for control c, etc
    #alias screen='TERM=screen screen'

    # coloured grep results please
    export GREP_OPTIONS='--color=auto' 
    export GREP_COLOR='7;35'

    # syntax highlighting pager
    #- () {
    #  /usr/share/vim/vim*/macros/less.sh "$*"
    #}

    TERM=linux
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
fi
