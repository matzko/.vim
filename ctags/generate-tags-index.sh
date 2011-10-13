#!/bin/bash

curdir=`pwd`
filedir="$1";
filebase=`basename "$1"`;

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
