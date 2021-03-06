function fish_prompt --description 'Ishans prompt'
    set_color brblue
    echo -n $USER
    echo -n @
    echo -n (hostname -s)
    set_color bryellow
    set -l pretty_dirs (dirs | string match -r '.+' | string trim)
    echo -n \ [$pretty_dirs]
    echo -n " "
    if test (string length $pretty_dirs) -ge 40
      echo
    end
    set_color brgreen
    echo -n "|>  "
    set_color normal
end