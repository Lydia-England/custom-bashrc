# bash functions

# cd into a directory and list contents
function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}

# rename directory 
function rnm() {
    rename "s/$1/$2/" *;
}
