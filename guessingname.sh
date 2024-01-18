#!/usr/bin/env bash
# File: guessingname.sh

function verify_guess {
    local response="high"
    
    if [[ $1 -eq $(ls | wc -l) ]]
    then
        response="equal"
    elif [[ $1 -lt $(ls | wc -l) ]]
    then
        response="low"
    fi

    echo $response
}

while [[ 5 -eq 5 ]]
do

    echo "Enter the number of files in this directory: "
    read user_guess

    if [[ $(verify_guess $user_guess) == "equal" ]]; then

        echo "Congratulations, you guessed it!"
        break

    elif [[ $(verify_guess $user_guess) == "low" ]]
    then

        echo "That's a bit too low..."

    else

        echo "That's a bit too high..."

    fi
done