# Copyright (C) 2024 Jelly Terra. All rights reserved.

{ programs.bash.shellInit = ''

alias la='ls -ha'
alias ll='ls -hl'
alias lla='ls -hla'

function hisc {
	rm -f $HOME/.bash_history
	history -c
}

function pset {
	export all_proxy='http://[::1]:1080'
	export http_proxy=$all_proxy
	export https_proxy=$all_proxy
}

function punset {
	unset all_proxy http_proxy https_proxy
}

''; }
