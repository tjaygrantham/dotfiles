function sudo
  command -vq doas
  if test $status = 0
    doas $argv
  else
    env sudo $argv
  end
end
