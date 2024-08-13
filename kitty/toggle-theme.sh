PATH=/opt/homebrew/bin:/usr/local/bin:$PATH
command -v dark-notify >/dev/null
if [[ $? -eq 0 ]]; then
  dark-notify -c "~/.config/kitty/set-current-theme.sh" &
  DARK_NOTIFY_PID=$!
  lsof -p $PPID +r 1 &>/dev/null
  kill $DARK_NOTIFY_PID
fi