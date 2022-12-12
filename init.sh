#!/bin/bash

read -p "Widget name: " s   

NAME="${s:-widget}"
BRANCH="main"
REPO="https://github.com/jiwe-app/widget-template.git"

# Clone repo
git clone -b $BRANCH $REPO $NAME
cd $NAME

# Replace placeholders
F="WIDGET_NAME"
find ./  -type f -name "*.swift" | xargs sed -i -e "s/$F/$NAME/g"
find ./ -name "*.*-e" -delete

# Restart git
rm -rf .git
git init
git add .
git commit -m "Init $NAME widget!"
