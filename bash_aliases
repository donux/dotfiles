#### APT ####
alias aptupd='sudo apt-get update'
alias aptupg='sudo apt-get upgrade -u'
alias aptdup='sudo apt-get update && sudo apt-get dist-upgrade -u'
alias aptins='sudo apt-get install'
alias aptinso='sudo apt-get install --only-upgrade'
alias aptrm='sudo apt-get remove'
alias aptprg='sudo apt-get purge'
alias aptcln='sudo apt-get autoclean;sudo apt-get autoremove'
alias aptarm='sudo apt-get autoremove'
alias aptarmp='sudo apt-get --purge autoremove'
alias aptarmprc='dpkg -l | grep ^rc | awk '"'"'{print $2}'"'"' | xargs -r sudo dpkg --purge'
#alias aptsrch='apt-cache search'
alias aptsrch='aptitude search'
alias aptplc='apt-cache policy'
alias aptshw='aptitude show'

#### TERMINAL ####
alias q='exit'
alias h='history'
alias j='jobs -l'
alias hg='history | grep'
alias c='clear'
alias x='exit'
alias psg='ps -ef | grep'
alias dpkgg='dpkg -l | grep'

#### VERBOSE AND HUMAN READABLE ####
alias ps='ps -A'
alias df='pydf -ah'   # needs pydf
alias du='du -h -c'
alias dutop='du --si | sort -hr | head -20'
alias mount='mount |column -t'
alias path='echo -e ${PATH//:/\\n}'
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
##### DATE AND TIME #####
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

#### DIRECTORIES ####
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias ls='ls -hF --color=auto'
alias lr='ls -ltrhF --color=auto'
alias lra='ls -altrhF --color=auto'
alias la='ls -ahF --color=auto'
alias ll='ls -lahF --color=auto'
alias l.='ls -d .* --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias mkdir='mkdir -vp'   # create parent directories on demand

#### MORE COLORS ####
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='colordiff'     # install  colordiff package

#### SAFETY ####
alias rm='rm -Iv --preserve-root'
#alias trash='mv -t ~/.local/share/Trash/files'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias shred='shred -n 100 -z -v -u'

##### PING #####
alias ping='ping -c 5'
alias pingfast='ping -c 100 -s.2'

##### NETWORK #####
alias ports='netstat -tulanp'
alias ipext='wget -q -O - checkip.dyndns.org | sed -e 's/[^[:digit:]\|.]//g''
alias speedtest='speedtest.py --server 3034'

#### REBOOT/SHUTDOWN ####
#alias reboot='dbus-send --system --print-reply --dest=org.freedesktop.ConsoleKit /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart'
#alias poweroff='dbus-send --system --print-reply --dest=org.freedesktop.ConsoleKit /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop'
#alias suspend='dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend'
#alias hibernate='dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Hibernate'

alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown -h now'

#### VIM ####
alias vi='vim'
alias visu='sudo vi'
alias visi='vim "+set si"'
alias edit='vim'

#### ALWAYS SUDO #####
alias updatedb='sudo updatedb'
alias updatefl='sudo update-flashplugin-nonfree --install'

#### OPENBOX ####
alias obx='obxprop | grep "OB_APP"'

#### NMAP
alias nmapquick='nmap -sP 192.168.1.0/24'

#### PRINTING & SCANNING ####
alias scangray='scanimage --resolution 300 --mode Gray | convert -page A4 - scan_`date +%y%m%d_%H%M%S`.pdf'
alias scancolor='scanimage --resolution 300 | convert -page A4 - scan_`date +%y%m%d_%H%M%S`.pdf'

##### FUN #####
#Fun Stuff
alias facts="curl -s randomfunfacts.com | grep '<i>' | sed 's/.*<i>\(.*\)<\/i>.*/\1/'"
alias fact_notify='notify-send "Random Fact" "`facts`"'

#### MISC ####
alias sl='sl -al'
alias bc='bc -l'   # calc with math support
alias ipt='sudo /sbin/iptables'
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias t='todo.sh'
