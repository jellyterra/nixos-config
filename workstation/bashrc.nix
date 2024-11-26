# Copyright (C) 2024 Jelly Terra. All rights reserved.

{ programs.bash.shellInit = ''

export GOROOT=/opt/go
export GOPATH=$HOME/go

alias la='ls -a'
alias lla='ls -la'

function hisc {
	rm -f $HOME/.bash_history
	history -c
}

function pset {
	if [ -z "$all_proxy" ]
	then
		export all_proxy='http://127.0.0.1:1080'
		export http_proxy=$all_proxy
		export https_proxy=$all_proxy
		echo "Set proxy: $all_proxy"
	else
		unset all_proxy http_proxy https_proxy
		echo "Unset proxy."
	fi
}

''; }
