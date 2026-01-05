source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=( history )

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
zvm_after_init_commands+=("bindkey '^[[A' history-substring-search-up" "bindkey '^[[B' history-substring-search-down")
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# evaluate witch one is preferred
HISTORY_SUBSTRING_SEARCH_PREFIXED=true

