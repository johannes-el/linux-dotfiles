if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

set -gx PATH /usr/local/texlive/2025/bin/x86_64-linux $PATH
set -gx MANPATH /usr/local/texlive/2025/texmf-dist/doc/man $MANPATH
set -gx INFOPATH /usr/local/texlive/2025/texmf-dist/doc/info $INFOPATH

set -gx CMAKE_GENERATOR Ninja
set -gx CMAKE_C_COMPILER_LAUNCHER ccache
set -gx CMAKE_CXX_COMPILER_LAUNCHER ccache

set -x XDG_CURRENT_DESKTOP sway

set PATH $HOME/.local/share/qlot/bin $PATH

export MANPATH="/usr/share/man:/usr/local/share/man"
set -U fish_user_paths /home/johannes/.local/share/gem/ruby/3.3.0/bin $fish_user_paths

function ll
    ls -l $argv
end

function gp
    guix shell -p $HOME/guix-profiles/$argv[1]/profile -- $argv[2..]
end

set --universal pure_symbol_prompt '❯'
set --universal pure_show_system_time true
set --universal pure_color_system_time pure_color_mute


abbr --add ga git add .
abbr --add gc git commit -m 
abbr --add gco git checkout

# Created by `pipx` on 2025-04-10 08:10:05
set PATH $PATH /home/johannes/.local/bin

if not pgrep -u $USER ssh-agent > /dev/null
    eval (ssh-agent -c)
end
