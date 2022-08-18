function code --wraps='codium' --description 'alias code=codium'
  command -vq codium
  if test $status = 0
    codium $argv
  else
    env code $argv
  end
end
