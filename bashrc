# My Aliases:
alias vim="nvim"
alias la="exa -lahF --color=always --icons --sort=size --group-directories-first"
alias ls="exa -lhF --color=always --icons --sort=size --group-directories-first"
alias idom="cat /home/iker/.personal/idom | xclip -selection clipboard"
alias devices="$HOME/.config/scripts/bluetooth"
alias vpn="$HOME/.personal/vpn"
alias rof="rofi -show run"
alias cat="bat"
alias wifidom="nmcli con up 'idom'"

# Path export:
export PATH="$PATH:/home/iker/.config"

# Default shell management:
eval "$(starship init bash)"

# Cool stuff
neofetch

# Custom functions:
flagize() {
    flag=$(cat $1)
    echo HTB\{$flag\} | xclip -selection clipboard
}

extractPorts() {
    server=$(cat $1 | grep Host | awk '{print $2}' | head -1)
    ports=$(cat $1 | tr ' ' '\n' | grep /open/ | cut -d '/' -f1 | tr '\n' ',')    
    echo ${ports::-1} $server | xclip -selection clipboard
}

function nedit () {
    touch $(pwd)/$1
    chmod +x $1
    [[ $(echo $1 | cut -d '.' -f2) = py ]] && echo '#! /usr/bin/python3' >> $1
    [[ $(echo $1 | cut -d '.' -f2) = js ]] && echo '#! /usr/bin/node' >> $1
    [[ $(echo $1 | cut -d '.' -f2) = sh ]] && echo '#! /bin/sh' >> $1
    [[ $(echo $1 | cut -d '.' -f2) = go ]] && echo '//usr/bin/go run $0 $@ ; exit' >> $1
    vim $1
}

function zipall() {
    zip -qr $1.zip *
}
