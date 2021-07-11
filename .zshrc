
#-----------------------------------------------------------------------------------------------------------------
# THEME
#-----------------------------------------------------------------------------------------------------------------
eval "$(starship init zsh)"

_gen_fzf_default_opts() {

	local color00='#282828'
	local color01='#3c3836'
	local color02='#504945'
	local color03='#665c54'
	local color04='#bdae93'
	local color05='#d5c4a1'
	local color06='#ebdbb2'
	local color07='#fbf1c7'
	local color08='#fb4934'
	local color09='#fe8019'
	local color0A='#fabd2f'
	local color0B='#b8bb26'
	local color0C='#8ec07c'
	local color0D='#83a598'
	local color0E='#d3869b'
	local color0F='#d65d0e'

	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
		" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
		" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
		" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"

	}

#-----------------------------------------------------------------------------------------------------------------
# PLUG MANAGER
#-----------------------------------------------------------------------------------------------------------------

[[ ! -d "$HOME/.antigen" ]] && git clone https://github.com/zsh-users/antigen.git "$HOME/.antigen"
source "$HOME/.antigen/antigen.zsh"


#-----------------------------------------------------------------------------------------------------------------
# PLUGS THEME
#-----------------------------------------------------------------------------------------------------------------

antigen bundle chrissicool/zsh-256color
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle zdharma/fast-syntax-highlighting
#-----------------------------------------------------------------------------------------------------------------
# PLUGS UTILS
#-----------------------------------------------------------------------------------------------------------------

antigen use belak/zsh-utils
antigen bundle editor
antigen bundle history
antigen bundle prompt
antigen bundle utility
antigen bundle completion
antigen apply

zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'
setopt auto_cd

#-----------------------------------------------------------------------------------------------------------------
# PLUGS SEARCH
#-----------------------------------------------------------------------------------------------------------------

antigen bundle marlonrichert/zsh-autocomplete
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

#-----------------------------------------------------------------------------------------------------------------
# HISTORY SUBSTRING
#-----------------------------------------------------------------------------------------------------------------

source /home/cdss/.antigen/bundles/zsh-users/zsh-history-substring-search/zsh-history-substring-search.zsh
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=fg=default,bg=default
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#-----------------------------------------------------------------------------------------------------------------
# ZSH AUTOSUGGEST
#-----------------------------------------------------------------------------------------------------------------

source /home/cdss/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#665c54,bg=default,bold,underline"

#-----------------------------------------------------------------------------------------------------------------
# GO
#-----------------------------------------------------------------------------------------------------------------

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

#-----------------------------------------------------------------------------------------------------------------
# ALIAS
#-----------------------------------------------------------------------------------------------------------------

alias vim="nvim"
alias ls="lsd"
