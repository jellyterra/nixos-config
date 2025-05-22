# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ programs.bash.shellInit = ''

alias la='ls -ha'
alias ll='ls -hl'
alias lla='ls -hla'

function hisc {
	rm -f $HOME/.bash_history
	history -c
}

function pset {
	export proxy_host='[::1]:1080'
	export all_proxy="socks5://$proxy_host"
	export http_proxy="http://$proxy_host"
	export https_proxy="$http_proxy"
}

function punset {
	unset all_proxy http_proxy https_proxy
}

''; }
