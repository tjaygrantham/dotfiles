function code --wraps='codium' --description 'alias code=codium'
  command -vq code
  if test $status = 0
    env code $argv
  else
    codium $argv
  end
end
