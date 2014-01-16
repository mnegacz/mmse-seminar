#!/bin/bash

commit=""
git log --numstat --pretty=oneline --pretty=format:"%H" | while read line
do
	word_count=$(echo $line | wc -w)
	
	if [ $word_count -eq "1" ] ; then
		commit=$line
	fi
	
	if [ $word_count -ge "3" ] ; then
		echo "$commit	$line" >> result.txt
	fi
done