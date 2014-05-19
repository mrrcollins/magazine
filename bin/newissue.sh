#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "New issue requires two parameters, a directory name for the new"
    echo "issue (such as gtia1406) and the name of the issue (such as Volume 1)"
    exit
fi

echo "Copying template..."
cp -r template ${1}

echo "Creating title.txt..."
echo "% GTIA Magazine ${2}" > ${1}/en/title.txt
echo "% gtia.com" >> ${1}/en/title.txt

echo "Adding to the repo..."
git add ${1}
