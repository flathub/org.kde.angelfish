#/usr/bin/env bash

#
# This script updates the generated sources from the upstream nightly build recipe.
#

TAG=$1

if [ -z ${TAG} ]; then
	echo "Usage: ./update-generated-sources.sh v21.05"
	exit 1
fi

files="kf5feedback.json corrosion.json generated-sources.json"

for file in $files; do
	wget -O generated/${file} https://invent.kde.org/plasma-mobile/angelfish/-/raw/${TAG}/flatpak/$file
done

