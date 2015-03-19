# checkinternet function
#
# Download internet status reports from istheinternetonfire.com
# Original idea by reddit user jooiiee
#
# Copyright (C) 2015 De Meyer Maarten <de.meyer.maarten@gmail.com>
#

checkinternet() {
    local title='Internet status:'
    local cow='moose'
    local term_length=40

    if [ -n "$COLUMNS" ] && [ "$COLUMNS" -le 80 ] ; then
        # Adapt the size of the message if the terminal supports it
        term_length="$((COLUMNS-5))"
    fi

    local raw=$(dig +short txt istheinternetonfire.com)

    # Chop quotes and add newline after sentence
    # export INTERNETONFIRE for use in .bashrc
    export INTERNETONFIRE=$(echo "$raw" | sed \
        -e 's/"//'g \
        -e 's/\.\s/\.\n/'g \
        -e 's/\\; /\n/'g)

    printf "%s\n%s" "$title" "$INTERNETONFIRE" |
        fold -s -w "$term_length" |

    if [ $# -ne 0 ] && [ "$1" = '-fun' ] ; then
        # paranoid moose for dramatic effect
        cowsay -f "$cow" -p -n
    else
        # Boring/Professional mode
        cat
    fi
}

