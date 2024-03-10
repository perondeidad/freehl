#!/bin/sh
SCRPATH="$( cd "$( dirname $(readlink -nf $0) )" && pwd )"

STEAMPATH="$HOME/.steam/steam/steamapps/common/Half-Life"
OUTPK3DIR="pak0_steam.pk3dir"

if ! [ -x "$(command -v rsync)" ]; then
	printf "Error: rsync no esta instalado.\n" >&2
	exit 1
fi

# take parameter if present
if [ $# -gt 0 ]; then
	STEAMPATH="$1"
else
	if ! [ -f "$STEAMPATH"/valve/halflife.wad ]; then
		printf "Escriba la raiz de la carpeta Half-Life (STEAM) :\n"
		read STEAMPATH
	fi
fi

# check before moving
if ! [ -f "$STEAMPATH"/valve/halflife.wad ]; then
	printf "Error: No se pudo encontrar los datos de Half-Life's.\n" >&2
	exit 1
fi

mkdir -p ./$OUTPK3DIR
rsync -av "$STEAMPATH"/valve/ ./$OUTPK3DIR/

# Dangerous rm -rf'ing going on here
printf "todo preparado. FreeHL sera jugable, pero los no seran del todo utilizables.\n"
