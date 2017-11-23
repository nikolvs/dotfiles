#!/bin/bash

# TODO: I'll improve this later

FILES=(
	.config/openbox/rc.xml
	.config/openbox/autostart
	.config/polybar/config
)

for file in ${FILES[@]}
do
	rm ~/$file
	ln -s $PWD/$file ~/$file
done
