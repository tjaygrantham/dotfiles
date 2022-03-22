function clear
  /usr/bin/env clear
  set script_path ~/.config/fish/functions/clear.applescript
  command -v osascript
  if test $TERM_PROGRAM = 'iTerm.app' && test $status = 0 && test -f $script_path
    osascript $script_path
  end
end
