#!/usr/bin/env bash

function proxy_on() {
    readonly host="127.0.0.1"
    readonly port="7897"
    readonly proxy="http://${host}:${port}"

    declare -a protocols=(http https ftp rsync all)

    for protocol in "${protocols[@]}"; do
        export "$protocol"_proxy="$proxy"
    done

    export no_proxy="localhost,127.0.0.1,::1,LOCALHOST"

    declare -a protocols=(HTTP HTTPS FTP RSYNC ALL)

    for protocol in "${protocols[@]}"; do
        export "$protocol"_PROXY="$proxy"
    done

    export NO_PROXY="localhost,127.0.0.1,::1,LOCALHOST"
} 

function proxy_off() {
    declare -a protocols=(http https ftp rsync all)

    for protocol in "${protocols[@]}"; do
        unset "$protocol"_proxy
    done

    unset no_proxy

    declare -a protocols=(HTTP HTTPS FTP RSYNC ALL)

    for protocol in "${protocols[@]}"; do
        unset "$protocol"_PROXY
    done

    unset NO_PROXY
} 

# proxy_on
