#-----------------------------------------------------------------------------------------------------------------
# ZSH
#-----------------------------------------------------------------------------------------------------------------


#-----------------------------------------------------------------------------------------------------------------
# ALIAS
#-----------------------------------------------------------------------------------------------------------------


#start neovim
alias vim="nvim"




#-----------------------------------------------------------------------------------------------------------------
# THEME
#-----------------------------------------------------------------------------------------------------------------


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

eval "$(starship init zsh)"

[[ ! -d "$HOME/.antigen" ]] && git clone https://github.com/zsh-users/antigen.git "$HOME/.antigen"
source "$HOME/.antigen/antigen.zsh"


#-----------------------------------------------------------------------------------------------------------------
# PLUGS THEME
#-----------------------------------------------------------------------------------------------------------------

antigen bundle chrissicool/zsh-256color
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle zpm-zsh/colors
antigen bundle zdharma/fast-syntax-highlighting



#-----------------------------------------------------------------------------------------------------------------
# PLUGS UTILS
#-----------------------------------------------------------------------------------------------------------------

# Set the default plugin repo to be zsh-utils
antigen use belak/zsh-utils

# Specify completions we want before the completion module
antigen bundle zsh-users/zsh-completions

# Specify plugins we want
antigen bundle editor
antigen bundle history
antigen bundle prompt
antigen bundle utility
antigen bundle completion

# Load everything
antigen apply

# Set any settings or overrides here
prompt belak
bindkey -e

zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'


#-----------------------------------------------------------------------------------------------------------------
# PLUGS SEARCH
#-----------------------------------------------------------------------------------------------------------------

antigen bundle matthieusb/zsh-sdkman
antigen bundle marlonrichert/zsh-autocomplete












