#! /bin/bash

# echo "Hello & welcome to GitUp your coding pal"

# include all source files/scripts
#source ./src/commands.sh
#source ./src/badges.sh
#source ./src/points.sh
#source ./src/utils.sh

function play_sound() {
    local sound_file="../assets/sounds/applause.mp3"

    mpg123 -q "$sound_file" < /dev/null > /dev/null 2>&1 &
}


function sim_git_init(){
    echo "🚀 initializing a git repo ...."

    play_sound

    
}

function main() {
    if [[ $1 == "git" && $2 == "init" ]]; then
        sim_git_init
    else
        echo "Unknown command. Try './main.sh git init'"
    fi
}

# Call the main function with command-line arguments
main "$@"