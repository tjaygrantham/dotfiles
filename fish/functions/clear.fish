function clear
  /usr/bin/env clear
  printf "\e[H\e[3J"
  set script_path ~/.config/fish/functions/clear.applescript
  command -vq osascript
  if test $status = 0 && test -f $script_path
    set -q TERM_PROGRAM
    if test $status = 0 && test $TERM_PROGRAM = 'iTerm.app'
      osascript $script_path
    end
  end
end
