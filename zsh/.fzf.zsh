# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/piotr.proszowski/Tools/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/piotr.proszowski/Tools/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/piotr.proszowski/Tools/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/piotr.proszowski/Tools/fzf/shell/key-bindings.zsh"
