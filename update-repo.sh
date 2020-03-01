#!/bin/sh

rsync -P -r $HOME/.scripts .

for FILE in $(< config-files.txt);
do
    FILEPATH=$HOME/$FILE
    echo ""
    echo "Copying " $FILEPATH
    mkdir -p $(dirname $FILE)
    rsync -P -r $FILEPATH $PWD/$FILE
done

    
