function netinfo
    echo (set_color cyan)"=================================="(set_color normal)
    echo (set_color yellow)"          Network Interfaces       "(set_color normal)
    echo (set_color cyan)"=================================="(set_color normal)

    # IPv4 adrese
    for line in (ifconfig | grep "inet " | awk '{print $2}')
        printf "%s %-12s %*s\n" (set_color white) "IPv4:" 30 (set_color green)"$line"(set_color normal)
        echo (set_color cyan)"----------------------------------"(set_color normal)
    end

    # IPv6 adrese
    for line in (ifconfig | grep "inet6 " | awk '{print $2}')
        printf "%s %-12s %*s\n" (set_color white) "IPv6:" 30 (set_color magenta)"$line"(set_color normal)
        echo (set_color cyan)"----------------------------------"(set_color normal)
    end

    echo (set_color cyan)"=================================="(set_color normal)
end

