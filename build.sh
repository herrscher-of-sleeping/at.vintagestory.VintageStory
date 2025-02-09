#!/usr/bin/env sh

if [ $# -eq 0 ]
then
	if ! [ -e vs_archive.tar.gz ]
	then
		echo "No vs_archive.tar.gz found"
		echo "Usage: ./build.sh http://link-to-game-archive to download archive or ./build.sh if you have it in current directory"
		exit 0
	else
		echo "Using cached vs_archive.tar.gz"
	fi
else
	echo "Using downloading archive"
	curl "$1" > vs_archive.tar.gz
fi

echo "Building the package"
flatpak-builder --force-clean --user --install-deps-from=flathub --repo=repo --install builddir at.vintagestory.VintageStory.yaml
flatpak build-bundle repo VintageStory.flatpak at.vintagestory.VintageStory --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo

