# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# -----------------
# Zim configuration
# -----------------

# Use degit instead of git as the default tool to install and update modules.
zstyle ':zim:zmodule' use 'degit'

# --------------------
# Module configuration
# --------------------

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Disable automatic widget re-binding on each precmd. This can be set when
# zsh-users/zsh-autosuggestions is the last module in your ~/.zimrc.
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

zmodload -F zsh/terminfo +p:terminfo
# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
for key ('^[[A' '^P' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
for key ('^[[B' '^N' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
for key ('k') bindkey -M vicmd ${key} history-substring-search-up
for key ('j') bindkey -M vicmd ${key} history-substring-search-down
unset key
# }}} End configuration added by Zim install


alias doc=lazydocker
alias lg=lazygit
alias tec=tectonic -X
alias typ=typst
alias bds=birthdays
# alias ls='exa --group-directories-first'
# alias l='exa -l --group-directories-first --git'
alias la='exa -l --all --group-directories-first --git'
# alias lr='exa -R --group-directories-first --git'
alias j=just
alias py=python3
alias zel=zellij
alias ff=fastfetch

export BAT_THEME="base16"

# opam configuration
[[ ! -r /home/$USER/.opam/opam-init/init.zsh ]] || source /home/$USER/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

export JULIAUP_PATH="$HOME/.juliaup/bin" 

# <<< juliaup initialize <<<

# Turso
export TURSO_PATH="$HOME/.turso"
[ -f "/home/rubenjr/.ghcup/env" ] && . "/home/rubenjr/.ghcup/env" # ghcup-env

export XDG_CONFIG_HOME="$HOME/.config/"
export CUDA_HOME="/usr/local/cuda"
export LD_LIBRARY_PATH="$CUDA_HOME/lib64"
export TECTONIC_PATH="$HOME/.tectonic"
export CARGO_PATH="$HOME/.cargo/bin"
export LOCAL_PATH="$HOME/.local/bin"
export PATH="$PATH:$LOCAL_PATH:$JULIAUP_PATH:$TURSO_PATH:$BUN_INSTALL/bin:$CARGO_PATH:$TECTONIC_PATH:$CUDA_HOME/bin"


# eval "$(zoxide init zsh)"

. "$HOME/.cargo/env"

logo_options=(pacbsd openstage trisquel darkos small cosmic)
size=${#logo_options[@]}
index=$(($RANDOM % $size + 1))
ff -c archey -l ${logo_options[$index]}
. "/home/rubenjr/.deno/env"
