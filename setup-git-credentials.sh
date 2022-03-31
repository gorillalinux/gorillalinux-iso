#!/bin/bash
project=$(basename `pwd`)
githubdir="gorillalinux"
echo "-----------------------------------------------------------------------------"
echo "this is project https://github.com/$githubdir/$project"
echo "-----------------------------------------------------------------------------"

git config --global pull.rebase false
git config --global push.default simple
git config --global user.name "Andreas Hafner"
git config --global user.email "git@hafner-online.net"
sudo git config --system core.editor code --wait
git remote set-url origin git@github.com:$githubdir/$project
echo
echo "Everything set"

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
