#!/bin/bash

# Deletes files and directories in the list file after using
# the function below.
#
# Add the following function to your .bash_profile (Linux) or
# .bashrc (OSX) in order to create the list file. Then use the
# function and it will create files_to_delete.txt in your
# home directory. Feel free to change the name of the function
# if it conflicts with any other commands or aliases.
#
# md() {
#	#add filenames to a file to be deleted as a batch
#	echo $(cd $(dirname "$1") && pwd -P)/$(basename "$1") >> ~/files_to_delete.txt
#}
#

while read -r file; do rm -r -- "$file"; done < files_to_delete.txt
