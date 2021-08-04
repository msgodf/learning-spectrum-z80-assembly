#!/usr/bin/env bash

for source in $(find . -iname "*.asm" -printf '%P'|cut -f1 -d.);
do
	pasmo --tapbas "${source}.asm" "${source}.tap"
	fuse -g 3x --no-confirm-actions --tape "${source}.tap"
done;
