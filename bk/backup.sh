#!/bin/bash
# 
read -p "Which file types do you want to backup " file_suffix
read -p "Which directory do you want to backup to " dir_name
# 
test -d ./$dir_name || mkdir -m 700 ./$dir_name
# 
find ./ -path ./$dir_name -prune -o \
 -name "*$file_suffix" -exec cp {} ./$dir_name/ \;
exit 0