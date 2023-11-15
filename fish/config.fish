fish_add_path -P /usr/local/bin
if test (uname) = Darwin
    set -x THEOS $HOME/theos
    set -x OO_PS4_TOOLCHAIN $HOME/OpenOrbis-PS4-Toolchain
    set -x GOLDHEN_SDK $HOME/GoldHEN_Plugins_SDK
    set -x VITASDK /usr/local/vitasdk
    set -x PSPDEV /usr/local/pspdev
    if test (arch) = "arm64"
        fish_add_path -P /opt/homebrew/bin
    else
        set -x PYENV_ROOT $HOME/.pyenv-x86
    end
    command -vq brew
    if test $status = 0
        set -x HOMEBREW_CASK_OPTS "--no-quarantine"
        set -x GHIDRA_INSTALL_DIR (brew --prefix)/Caskroom/ghidra/*/*
        fish_add_path -P (brew --prefix make)/libexec/gnubin
    end
    if test -d /opt/MonkeyDev
        set -x MonkeyDevPath /opt/MonkeyDev
        set -x MonkeyDevDeviceIP localhost
        set -x MonkeyDevDevicePort 2222
        fish_add_path -P /opt/MonkeyDev/bin
    end
end
fish_add_path -P $HOME/.cargo/bin