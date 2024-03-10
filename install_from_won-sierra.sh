#!/bin/sh
SCRPATH="$( cd "$( dirname $(readlink -nf $0) )" && pwd )"

WONPATH="$HOME/.wine/drive_c/Sierra/Half-Life/"
OUTPK3DIR="pak0_won.pk3dir"

if ! [ -x "$(command -v rsync)" ]; then
	printf "Error: rsync no esta instalado en el sistema.\n" >&2
	exit 1
fi

# take parameter if present
if [ $# -gt 0 ]; then
	WONPATH="$1"
else
	if ! [ -f "$WONPATH"/valve/halflife.wad ]; then
		printf "La raiz de Half-Life (WON):\n"
		read WONPATH
	fi
fi

# check before moving
if ! [ -f "$WONPATH"/valve/halflife.wad ]; then
	printf "Error: No puedo encontrar dónde están los archivos de Half-Life.\n" >&2
	exit 1
fi

mkdir -p ./$OUTPK3DIR
rsync -av "$WONPATH"/valve/ ./$OUTPK3DIR/

# Dangerous rm -rf'ing going on here
printf "todo preparado. FreeHL sera jugable.\n"
