#
# macOS Specific
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
  if [[ $(arch) == arm64 ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
  fi
  command -v brew > /dev/null
  if [[ $? -eq 0 ]]; then
    export HOMEBREW_CASK_OPTS="--no-quarantine"
    export GHIDRA_INSTALL_DIR=$(echo $(brew --prefix)/Caskroom/ghidra/*/*)
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
command -v brew > /dev/null
if [[ $? -eq 0 ]]; then
   export PATH="$(brew --prefix make)/libexec/gnubin:$PATH"
fi

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
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
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