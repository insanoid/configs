#!/bin/bash

echo 'Backing up terminal configs...'
cp ~/.bash_profile ./terminal/bash_profile.bak
cp ~/.dir_colors ./terminal/dir_colors.bak
cp ~/.gitk ./terminal/gitk.bak
echo 'Done!'
