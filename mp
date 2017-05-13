#!/bin/bash

git add . -n
echo -n "Confirm? [y/n]: "
read CONFIRM
if [ "$CONFIRM" == "y" ]; then
	git add .
	echo -n "Write commit message and press [ENTER]: "
	read MESSAGE
	git commit -m "$MESSAGE"
	git push -u origin master
else
	echo "Abort."
fi