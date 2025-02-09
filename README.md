Modified flatpak manifest and build script for Vintage Story.

Flathub only gets stable updates, and only after some time, so this may be useful if you want to install an unstable version of Vintage Story as a Flatpak.

To build the package, run `sh build.sh <link-to-the-game-archive-on-vintagestory.at>` (or just sh build.sh if you have the archive vs\_archive.tar.gz alongside the script. It's being cached after the first download). You mush have flatpak and flatpak-builder installed and Flathub repo enabled on your system. Please see [the beginning of this page](https://docs.flatpak.org/en/latest/first-build.html) to figure out how to do so.

The script will produce VintageStory.flatpak file, which you can then install using graphical user interface with double-click, or using a terminal, with `flatpak install ./VintageStory.flatpak` command, or with whatever else method is available. You should be able to install this file on a different x86\_64 computer with Linux (such as, for example, Steam Deck), if it has Flatpak installed and Flathub repo enabled.

You also probably want to first remove your already installed game, if you have it installed via Flatpak, to not have to deal with branch switching. User files, such as mods and maps, will carry over.

