#! /bin/bash

echo "Hello & welcome to GitUp your coding pal"

# Include all source files/scripts
source ./src/commands.sh
source ./src/badges.sh
source ./src/points.sh
source ./src/utils.sh

function play_sound() {
    local sound_file="../assets/sounds/applause.mp3"

    if [[ "$OSTYPE" == "darwin"* ]]; then
        afplay "$sound_file" &>/dev/null &
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        mpg123  "$sound_file" < /dev/null > /dev/null 2>&1 &  # runs in quiet mode and detaches the terminal
    elif [[ "$OSTYPE" == "msys" ]]; then
        # Windows
        powershell -Command "(New-Object System.Media.SoundPlayer '$sound_file').Play()"
    else 
        echo "Unsupported OS"
    fi
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
