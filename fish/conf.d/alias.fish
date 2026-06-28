function la
    ls -A $argv
end

function ll
    ls -Al $argv
end

function se
    env EDITOR=nvim sudoedit $argv
end

function poweroff
    sudo poweroff $argv
end

function reboot
    sudo reboot $argv
end
