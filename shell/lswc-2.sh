#!/bin/bash
# display the # of files and directories
# within current directory

echo -n "files and directories: "
ls $1 | wc -l

exit 0
