#!/bin/bash

echo 'Backing up git configs...'
cp ~/.gitconfig ./git/gitconfig.bak
cp ~/.gitk ./git/gitk.bak
echo 'Done!'
