#!/bin/bash

while true; do
    echo "Starting bot..."
    
    # Run bot.py and send "3" as input
    (echo "3"; sleep 43200) | python3 bot.py &

    # Get the process ID (PID) of the bot
    BOT_PID=$!

    # Sleep for 12 hours (43200 seconds)
    sleep 43200

    # Kill the bot process
    echo "Stopping bot..."
    kill $BOT_PID

    # Wait a few seconds before restarting
    sleep 10
done

