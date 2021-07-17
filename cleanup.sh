#!/bin/bash

read -p "Enter your directory path: " directory
read -p "Enter retension period: " rp

rm -f ./delcleanup.txt
if [[ -z "$directory" || -z  "$rp" ]]
then
    echo "Please specify a valid absalute direcotry path and retionsion period!"
    exit 1
else
    if ! [[ "$directory" =~ ^[[:alnum:]]*$ || "$rp" =~ [^0-9] ]];
    then
        if [[ -d "$directory" ]];
        then
            echo "--------------------------------------------------------------"
            echo "The below-listed files are older than $rp days under this directory $directory"
            echo "--------------------------------------------------------------"
            find "$directory" -type f -iname "*" -mtime +"$rp" -exec ls {} \; | tee -a ./delcleanup.txt
            echo ""
            if [ -s "./delcleanup.txt" ]
            then
                read -p "Do you want to remove these above-listed files? (Please verify it before) [Y/N]: " con
                echo ""
                    if [[ "$con" =~ ^([yY][eE][sS]|[yY])+$ ]]
                    then
                        for delete in $(cat ./delcleanup.txt); do echo "Deleting $delete"; rm -f $delete ; done;
                        rm -f ./delcleanup.txt
                    else
                        rm -f ./delcleanup.txt
                    fi
            else
                echo "There is no files found with this $rp days retention period!"
                rm -f ./delcleanup.txt
            fi
        else
            echo "No such direcotry found!"
        fi
    else
        echo "Please enter a valid path and period!"
        exit 1
    fi
fi
