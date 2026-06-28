function proxy_on
    set -l host "127.0.0.1"
    set -l port "7897"
    set -l proxy "http://$host:$port"

    set protocols http https ftp rsync all

    for protocol in $protocols
        set -gx "$protocol"_proxy "$proxy"
    end

    set -gx no_proxy "localhost,127.0.0.1,::1,LOCALHOST"

    set protocols HTTP HTTPS FTP RSYNC ALL

    for protocol in $protocols
        set -gx "$protocol"_PROXY "$proxy"
    end

    set -gx NO_PROXY "localhost,127.0.0.1,::1,LOCALHOST"
end

function proxy_off
    set protocols http https ftp rsync all

    for protocol in $protocols
        set -e "$protocol"_proxy
    end

    set -e no_proxy

    set protocols HTTP HTTPS FTP RSYNC ALL

    for protocol in $protocols
        set -e "$protocol"_PROXY
    end

    set -e NO_PROXY
end

# proxy_on
