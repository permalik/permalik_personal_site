#!/bin/bash

> /home/tmalik/git/nohup.archive_deploy.out

echo "✅archive_deploy: executing archive_archive..."
cd /home/tmalik/git/archive_utility/cmd/archive
./start.sh

echo "✅archive_deploy: killing archive_api..."
ARCHIVE_API_PROCESS_NAME="./api"
PID=$(pgrep -f "$ARCHIVE_API_PROCESS_NAME")

if [ -n "$PID" ]; then
    echo "stopping archive_api process with PID: $PID"
    kill -9 "$PID"
else
    echo "process not found"
fi

echo "✅archive_deploy: executing archive_api..."
cd /home/tmalik/git/archive_utility/cmd/api
> /home/tmalik/git/nohup.archive_api.out
nohup ./start.sh > /home/tmalik/git/nohup.archive_api.out 2>&1 & disown

echo "✅archive_deploy: executing archive_resume..."
cd /home/tmalik/git/archive_resume
./start.sh

echo "✅archive_deploy: executing archive_ui..."
cd /home/tmalik/git/archive_ui
./start.sh

echo "✅archive_deploy: restarting nginx..."
sudo systemctl restart nginx

echo "✅archive_deploy: executing archive_gmail..."
cd /home/tmalik/git/archive_utility/cmd/gmail
./start.sh
