#!/bin/bash
echo "Checking for newer files online first"
git pull
git add --all .

echo "####################################"
echo "Write your commit comment!"
echo "####################################"

read input

git commit -m "$input"

git push -u origin main

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
