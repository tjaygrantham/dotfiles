set -x THEOS $HOME/theos
set -x OO_PS4_TOOLCHAIN $HOME/OpenOrbis-PS4-Toolchain
set -x GOLDHEN_SDK $HOME/GoldHEN_Plugins_SDK
command -vq brew
if test $status = 0
    fish_add_path /opt/homebrew/bin
    set -x HOMEBREW_CASK_OPTS "--no-quarantine"
    set -x GHIDRA_INSTALL_DIR (eval "brew --prefix")/Caskroom/ghidra/*/*
    set -x VITASDK /usr/local/vitasdk
    set -x PSPDEV /usr/local/pspdev
end
if test -d /opt/MonkeyDev
    set -x MonkeyDevPath /opt/MonkeyDev
    set -x MonkeyDevDeviceIP localhost
    set -x MonkeyDevDevicePort 2222
    fish_add_path /opt/MonkeyDev/bin
end
fish_add_path $HOME/.cargo/bin
