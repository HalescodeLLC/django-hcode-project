#!/bin/bash

echo
echo `find . -type f -iname \*.pyc`
echo
read -p "Delete these files (y/n)? " RESP
case "$RESP" in
    y|Y ) find . -type f -iname \*.pyc -delete;;
    n|N ) echo "Exiting without deleting anything.";;
    * ) echo "invalid";;
esac
