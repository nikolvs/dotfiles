#!/bin/bash

for dir in */; do
	stow $dir -t ~
done
