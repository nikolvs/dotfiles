#!/bin/bash

# TODO: I'll improve this later

FILES=(
	.config/openbox/rc.xml
	.config/openbox/autostart
	.config/polybar/config
	.config/rofi/config
	.config/rofi/theme
	.config/compton.conf
)

for file in ${FILES[@]}
do
	rm ~/$file
	ln -s $PWD/$file ~/$file
done
