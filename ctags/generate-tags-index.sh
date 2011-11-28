#!/bin/bash

curdir=`pwd`
filedir="$1";
filebase=`basename "$1"`;

# Use the repo's main directory name if the current directory is "trunk"
if [ 'trunk' = $filebase ] 
	then
	filebase=`dirname $1`;
	filebase=`basename $filebase`;
fi

echo "Generating tags for $filedir as \"$filebase\".";
echo "";

cd $filedir;

exec ctags-exuberant -f ~/.vim/ctags/mytags/$filebase \
-h ".php" \
-R \
--exclude=.git \
--exclude=.svn \
--exclude=*.sql \
--tag-relative=yes \
--PHP-kinds=+cfpd \
--regex-PHP='/abstract\s+class\s+([^ ]+)/\1/c/' \
--regex-PHP='/interface\s+([^ ]+)/\1/c/' \
--regex-PHP='/(public\s+|static\s+|protected\s+|private\s+)\$([^ 	=]+)/\2/p/' \
--regex-PHP='/const\s+([^ 	=]+)/\1/d/' \
--regex-PHP='/final\s+(public\s+|static\s+|abstract\s+|protected\s+|private\s+)function\s+\&?\s*([^ (]+)/\2/f/' \

cd $curdir;
