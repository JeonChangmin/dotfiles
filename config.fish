# Set environment variables
set fish_greeting
set -gx TERM xterm-256color
set -gx PATH /home/changminjeon/.local/bin $PATH

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate 'x'

# Fish prompt
function fish_prompt
    set last_status $status
    set_color white
    echo -n (hostname)
    set_color white
    echo -n :
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal
    echo -n (__fish_git_prompt)
    echo -n ' > '
    set_color normal
end

# Abbreviation
abbr -ag add adb devices
abbr -ag adp adb pair
abbr -ag adc adb connect
abbr -ag addc adb disconnect
abbr -ag ads adb shell
abbr -ag adk adb kill-server

abbr -ag python python3.8
abbr -ag python3 python3.8
abbr -ag pip python3.8 -m pip
abbr -ag pip3 python3.8 -m pip

abbr -ag ls exa -l -s type
abbr -ag la exa -al -s type

abbr -ag ga  git add
abbr -ag gb  git branch
abbr -ag gc  git checkout
abbr -ag gd  git diff
abbr -ag gf  git fetch
abbr -ag gl  git pull
abbr -ag gp  git push
abbr -ag gm  git merge
abbr -ag gcm git commit -m
abbr -ag gst git status
abbr -ag grhh git reset HEAD --hard
abbr -ag grup git remote update --prune
abbr -ag gloga git log --all --graph --oneline --decorate

abbr -ag tt tmux attach -t
abbr -ag tl tmux ls
