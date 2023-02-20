#!/usr/bin/env bash
# File: guessingname.sh

while [[ 5 -eq 5 ]]
do
    echo "Enter the number of files in this directory: "

    read user_guess
    
    if [[ $(verify_guess $user_guess)="equal" ]]
    then

        echo "Congratulations, you guessed it!"
        break

    else if [[ $(verify_guess $user_guess)="low" ]]
    then

        echo "That's a bit too low..."

    else

        echo "That's a bit too high..."

    fi
done

function verify_guess {
    local response=""

    if [[ $1 -eq $(ls | wc -l) ]]
    then
        let response="equal"
    else if [[ $1 -lt $(ls | wc -l) ]]
    then
        let response="low"
    else
        let response="high"
    fi

    echo $response
}