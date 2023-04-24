function code
  command -vq codium
  if test $status = 0
    codium $argv
  else
    env code $argv
  end
end
