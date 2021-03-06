
fish_vi_key_bindings

# use vim if nvim is not available in the system
# fish syntax
if command -v nvim
    echo nvim is used by default
    alias vim="nvim"
end

source ~/.aliases

# fish git prompt
# https://martinklepsch.org/posts/git-prompt-for-fish-shell.html

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end


# function
function f
    echo f
    ls -ahF --color=auto -l | grep --color=auto $argv
end

function f1
    echo f
    ls -ahF --color=auto | grep --color=auto $argv
end

function hg
    history | grep $argv | grep -v hsearch;
end

function md
    mkdir $argv; chmod g+w $argv
end

