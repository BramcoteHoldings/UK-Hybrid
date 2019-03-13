BEGIN {
}

/dcc32 Hint/ { print $3 $6 $13}

END { }
