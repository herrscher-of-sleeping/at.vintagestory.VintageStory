Modified flatpak manifest and build script for Vintage Story.

Flathub only gets stable updates, and only after some time, so this may be useful if you want to install an unstable version of Vintage Story as a Flatpak.

To build the package, run `sh build.sh`. You should have flatpak and flatpak-builder installed and Flathub repo enabled on your system. Please see [the beginning of this page](https://docs.flatpak.org/en/latest/first-build.html) to figure out how to do so.

You also probably want to first remove your already installed game, if you have it installed via Flatpak, to not have to deal with branch switching. User files, such as mods and maps, will carry over.

