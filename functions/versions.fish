function versions
    set max_width 30

    echo (set_color cyan)"=================================="(set_color normal)
    echo (set_color yellow)"          Versions Info           "(set_color normal)
    echo (set_color cyan)"=================================="(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "bun:"        $max_width (set_color green)(bun -v)(set_color normal)
    echo (set_color cyan)"----------------------------------"(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "java:"       $max_width (set_color green)(java -version 2>&1 | head -n 1 | awk -F '"' '{print $2}')(set_color normal)
    echo (set_color cyan)"----------------------------------"(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "gradle:"     $max_width (set_color green)(gradle -v | grep 'Gradle' | awk '{print $2}')(set_color normal)
    echo (set_color cyan)"----------------------------------"(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "pod:"        $max_width (set_color green)(pod --version)(set_color normal)
    echo (set_color cyan)"----------------------------------"(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "xcodebuild:" $max_width (set_color green)(xcodebuild -version | awk 'NR==1 {print $2}')(set_color normal)
    echo (set_color cyan)"----------------------------------"(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "nvm:"        $max_width (set_color green)(nvm -v)(set_color normal)
    echo (set_color cyan)"----------------------------------"(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "node:"       $max_width (set_color green)(node -v)(set_color normal)
    echo (set_color cyan)"----------------------------------"(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "npm:"        $max_width (set_color green)(npm -v)(set_color normal)
    echo (set_color cyan)"----------------------------------"(set_color normal)

    printf "%s %-12s %*s\n" (set_color white) "yarn:"       $max_width (set_color green)(yarn -v)(set_color normal)
    echo (set_color cyan)"=================================="(set_color normal)
end

