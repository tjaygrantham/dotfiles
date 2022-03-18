function clear
  /usr/bin/env clear
  set script_path ~/.config/fish/functions/clear.applescript
  if test $TERM_PROGRAM = 'iTerm.app' && test osascript && test -f $script_path
    osascript $script_path
  end
end
