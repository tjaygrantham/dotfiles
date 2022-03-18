function ls --wraps='exa -l --icons --git' --description 'alias ls=exa -l --icons --git'
  if test exa
    exa -l --icons --git $argv
  else
    echo 'exa not found, falling back to ls'
    /usr/bin/env ls $argv
  end
end
