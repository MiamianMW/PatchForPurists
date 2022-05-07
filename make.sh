#!/bin/bash

VER=""
NAME="pfp_pl"
DICT="../plpatch/ENtoPL_plpatch${VER}.xml"

if [ -e "$NAME.zip" ]; then
	rm "$NAME.zip"
fi

"../plpatch/yampt.exe" --convert -f input/* -d "$DICT" "Patch for Purists.CHANGED.PL.4.0.2.xml" "Patch for Purists.NOTFOUND.PL.4.0.2.xml"

zip "$NAME.zip" "Patch for Purists.esm" "Patch for Purists - Semi-Purist Fixes.ESP"
