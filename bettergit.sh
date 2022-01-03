#!/bin/bash

#echo "Where is your repository located in?"
#read repoLocation

echo "Have you initialized the repository? Y/n"
read isInit

if [ $isInit == "y" ]; then 
    echo "Have you added the remote? Y/n"
    read isRemote
    if [ $isRemote == "y" ]; then
        #cd repoLocation
        git add --all

        echo "What is your commit message?"
        read commitMessage

        git commit $commitMessage
        git push origin master

        #echo 'git push origin master'
    fi
fi