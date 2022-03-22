function clear
  /usr/bin/env clear
  set script_path ~/.config/fish/functions/clear.applescript
  command -vq osascript
  if test $status = 0 && test -f $script_path
    set -q TERM_PROGRAM
    if test $status = 0 && test $TERM_PROGRAM = 'iTerm.app'
      osascript $script_path
    end
  end
end
