#!/bin/bash

# create a tar ball of all the files that are under subversion control

# produce a list of files to include
for i in $(git ls-tree -r master --name-only | egrep -v 'create_tarball.sh|.gitignore'); do if [ -f $i ]; then echo $i; fi; done > include_files

tar -cvzf thesis.tar.gz -T include_files
