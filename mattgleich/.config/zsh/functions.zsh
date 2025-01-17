# cd with fgh (https://github.com/Matt-Gleich/fgh)
fcd() { cd "$(fgh ls "$@" 2>/dev/null)" || ( echo "Failed to find repository" && return 1; ) }

# Copy cat output to clipboard
ccat() { cat "$1" | pbcopy }

# cd into a config directory with ease
conf() { cd ~/.config/"$1" }

# run a rust file in one command
rrun() {
    BINARY_NAME="${1:0:-3}"
    rustc $1
    ./$BINARY_NAME
    rm $BINARY_NAME
}

# push a new release in one command
gitrelease() { git tag -a $1 -m "$1" && git push origin $1 }

