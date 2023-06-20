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

playWordle(){
    local secretWord=$(getSecretWord)
    local attempts=0
    local guessedLetter=""

    while [[ $attempts -lt $maxAttempts ]]; do
        echo "Attempt ($((attempts+1))/$maxAttempts):"
        read -p "Enter a letter or a word: " guessed_input

    if [[ $guessedInput == "$secretWord" ]]; then
            echo "Congratulations! You guessed the word!"
            echo "Secret word: $secretWord" >> "$result_file"
            echo "Attempts: $((attempts+1))" >> "$result_file"
            return
        fi

    if isLetterInWord "${guessedInput:0:1}" "$secretWord"; then
         guessedLetters+="${guessedInput:0:1}"
    
}


