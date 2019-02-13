#!/ bin/bash
#File: guessinggame.sh

echo "[Welcome to The Guessing Game]"

function ask {
        echo "Please enter the number of files in the current directory:"
        read guess 
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do 
        if [[ $guess -lt $files ]]
        then
                echo "Too low."
        else
                echo "Too high."
        fi 
        ask
done

echo "Congratulations! You guessed correct! Here it is the list of files."
echo "---" && ls -1