if status is-interactive
    set -x THEOS ~/theos
    set -x PATH ~/.cargo/bin:$PATH
    command -vq brew
    if test $status = 0
        set -x HOMEBREW_CASK_OPTS "--no-quarantine"
        set -x GHIDRA_INSTALL_DIR (eval "brew --prefix")/Caskroom/ghidra/*/*
    end
end
