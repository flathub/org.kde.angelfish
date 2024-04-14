#/usr/bin/env bash

#
# This script updates the generated sources from the upstream nightly build recipe.
#

TAG=$1

if [ -z ${TAG} ]; then
	echo "Usage: ./update-generated-sources.sh v24.02.2"
  echo "Where the version is the latest tag on KDE GitLab: https://invent.kde.org/network/angelfish/-/tags"
	exit 1
fi

for file in "generated-sources.json" "corrosion.json"; do
	wget -O generated/${file} https://invent.kde.org/plasma-mobile/angelfish/-/raw/${TAG}/flatpak/${file}
done

