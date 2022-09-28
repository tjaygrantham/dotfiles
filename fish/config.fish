set -x THEOS $HOME/theos
command -vq brew
if test $status = 0
    set -x HOMEBREW_CASK_OPTS "--no-quarantine"
    set -x GHIDRA_INSTALL_DIR (eval "brew --prefix")/Caskroom/ghidra/*/*
end
fish_add_path $HOME/.cargo/bin
