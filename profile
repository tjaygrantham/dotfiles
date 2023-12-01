#
# macOS Specific
#

if [[ $(uname -s) == Darwin ]]; then
  export BROWSER='open'
  if [[ $(arch) == arm64 ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
  else
    export PATH="/usr/local/bin:$PATH"
    export PYENV_ROOT="$HOME/.pyenv-x86"
  fi
  command -v brew > /dev/null
  if [[ $? -eq 0 ]]; then
    export HOMEBREW_CASK_OPTS="--no-quarantine"
    export GHIDRA_INSTALL_DIR=$(echo $(brew --prefix)/Caskroom/ghidra/*/*)
    export PATH="$(brew --prefix make)/libexec/gnubin:$PATH"
  fi
  if [[ -d /opt/MonkeyDev ]]; then
    export MonkeyDevPath=/opt/MonkeyDev
    export MonkeyDevDeviceIP=localhost
    export MonkeyDevDevicePort=2222
    export PATH=/opt/MonkeyDev/bin:$PATH
  fi
fi

#
# Brew
#

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1

#
# SDKs
#

export OO_PS4_TOOLCHAIN=$HOME/OpenOrbis-PS4-Toolchain
export GOLDHEN_SDK=$HOME/GoldHEN_Plugins_SDK
export VITASDK=/usr/local/vitasdk
export PSPDEV=/usr/local/pspdev

#
# Editors
#

export EDITOR='nano'
export VISUAL='nano'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# NVM
#

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#
## Theos
#

export THEOS=$HOME/theos

#
# Cargo
#

export PATH=$HOME/.cargo/bin:$PATH

#
# Aliases
#

source ~/.aliases