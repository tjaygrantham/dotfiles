function ls
  command -vq exa
  if test $status = 0
    exa -l --icons --git $argv
  else
    env ls -l --color=auto $argv
  end
end
