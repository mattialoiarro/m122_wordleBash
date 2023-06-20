#!/bin/bash

word_file="wörter.txt"
max_attempts=5
result_file="ergebnis.txt"

# Choose a random word from the file
get_secret_word() {
    local words=($(cat "$word_file"))
    local num_words=${#words[@]}
    local random_index=$((RANDOM % num_words))
    echo "${words[$random_index]}"
}


secret_word=$(get_secret_word)
echo "Secret word: $secret_word"