#!/bin/bash

echo "archive_ui: removing build..."
sudo rm -rf /var/www/tymalik/html/*
sudo rm -rf /var/www/tymalik/html/.*

echo "archive_ui: installing dependencies..."
pnpm i

echo "archive_ui: building application..."
pnpm build
