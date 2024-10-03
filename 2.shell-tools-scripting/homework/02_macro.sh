#!/bin/bash

#macro_dir=""

macro() {
	macro_dir=$(pwd)
    echo "current directory was saved: $macro_dir"
}

polo() {
    if [ -z "$macro_dir" ]; then
        echo "macro not executed or directory not saved."
    else
        cd "$macro_dir" || return
        echo "Returned to the macro directory: $macro_dir"
    fi
}

export -f macro
export -f polo
