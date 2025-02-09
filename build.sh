#!/usr/bin/sh

if [ -z ${VERSION+x} ]
then
	echo "Set VERSION environment variable"
fi

if [ -z ${BRANCH+x} ]
then
	echo "Set BRANCH environment variable"
fi

curl "https://cdn.vintagestory.at/gamefiles/$BRANCH/vs_client_linux-x64_$VERSION.tar.gz" > vs_archive.tar.gz
flatpak-builder --force-clean --user --install-deps-from=flathub --repo=repo --install builddir at.vintagestory.VintageStory.yaml
flatpak build-bundle repo VintageStory.flatpak at.vintagestory.VintageStory --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo

