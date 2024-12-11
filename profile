# NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# pyenv

[[ $(uname -s) == Darwin && $(arch) != arm64 ]] && export PYENV_ROOT="$HOME/.pyenv-x86"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
command -v pyenv >/dev/null
[[ $? == 0 ]] && eval "$(pyenv init -)"

# Brew

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

# SDKs

export OO_PS4_TOOLCHAIN=$HOME/OpenOrbis-PS4-Toolchain
export GOLDHEN_SDK=$HOME/GoldHEN_Plugins_SDK
export VITASDK=$HOME/vitasdk
export PSPDEV=$HOME/pspdev

# Editors

export EDITOR='vi'
export VISUAL='vi'
export PAGER='less'

# Language

if [[ -z "$LANG" ]]; then
	export LANG='en_US.UTF-8'
fi

# Theos

export THEOS=$HOME/theos

# snap

export PATH=$PATH:/snap/bin

# bun

export PATH=$PATH:$HOME/.bun/bin

# deno

export PATH=$PATH:$HOME/.deno/bin

# go

export PATH=$PATH:$HOME/go/bin

# rust

export PATH=$PATH:$HOME/.cargo/bin

# ps3dev

export PS3DEV=$HOME/ps3dev
export PSL1GHT=$PS3DEV

export PATH=$PATH:$PS3DEV/bin
export PATH=$PATH:$PS3DEV/ppu/bin
export PATH=$PATH:$PS3DEV/spu/bin

# pspdev

export PSPDEV=$HOME/pspdev
export PATH=$PATH:$PSPDEV/bin

# macOS Specific

if [[ $(uname -s) == Darwin ]]; then
	export BROWSER='open'
	command -v brew >/dev/null
	if [[ $? -eq 0 ]]; then
		[[ $(arch) == arm64 ]] && export PATH="/opt/homebrew/bin:$PATH"
		export HOMEBREW_PREFIX=$(brew --prefix)
		export HOMEBREW_CASK_OPTS="--no-quarantine"
		export GHIDRA_INSTALL_DIR=$(echo $HOMEBREW_PREFIX/Caskroom/ghidra/*/*)
		export PATH="$(brew --prefix make)/libexec/gnubin:$PATH"
		export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
		export ANDROID_NDK_HOME="$HOMEBREW_PREFIX/share/android-ndk"
	fi
	if [[ -d /opt/MonkeyDev ]]; then
		export MonkeyDevPath=/opt/MonkeyDev
		export MonkeyDevDeviceIP=localhost
		export MonkeyDevDevicePort=2222
		export PATH=/opt/MonkeyDev/bin:$PATH
	fi
fi
