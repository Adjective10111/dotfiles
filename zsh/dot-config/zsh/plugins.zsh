# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins+=(git)

# ZSH_TMUX_AUTOSTART=true
plugins+=(tmux)

ZVM_SYSTEM_CLIPBOARD_ENABLED=true
plugins+=(zsh-vi-mode)
function zvm_after_lazy_keybindings() {
	zvm_bindkey vicmd '?' history-incremental-search-backward
}

