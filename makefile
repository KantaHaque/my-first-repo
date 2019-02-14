all: README.md 

README.md: guessinggame.sh
        echo "## The Unix Workbench" > README.md
        echo "*by Johns Hopkins University*" >> README.md
        echo "*at https://www.coursera.org/*" >> README.md
        echo "\n**Description**: This assignment is designed to test your facility for using Git and GitHub, creating makefiles, and writing Bash programs. First you will create a program called guessinggame.sh. This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
        echo -n "\n**Make date**: " >> README.md
        date >> README.md
        echo -n "\n**NNumber of lines of code contained in guessinggame.sh:** " >> README.md
        grep -c '' guessinggame.sh >> README.md
clean:
        rm README.md
