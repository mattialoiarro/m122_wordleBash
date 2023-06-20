#!/bin/bash

word_file="wörter.txt"
max_attempts=5
result_file="ergebnis.txt"

# Choose a random word from the file
getSecretWord() {
    local words=($(cat "$word_file"))
    local num_words=${#words[@]}
    local random_index=$((RANDOM % num_words))
    echo "${words[$random_index]}"
}

isLetterInWord(){
    local letter=$1
    local secretWord=$2

    if [[ $secretWord == *"$letter"* ]]; then
        return 0
    else
        return 1
    fi
}

letter="a"
word="apple"

if isLetterInWord "$letter" "$word"; then
    echo "$letter is present in $word"
else
    echo "$letter is not present in $word"
fi
