if status is-interactive
    set -x THEOS ~/theos
    set -x PATH ~/.cargo/bin:$PATH
    set -x HOMEBREW_CASK_OPTS "--no-quarantine"
    set -x GHIDRA_INSTALL_DIR (eval "brew --prefix")/Caskroom/ghidra/*/*
end
