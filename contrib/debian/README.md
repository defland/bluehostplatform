
Debian
====================
This directory contains files used to package bluehostd/bluehost-qt
for Debian-based Linux systems. If you compile bluehostd/bluehost-qt yourself, there are some useful files here.

## bluehost: URI support ##


bluehost-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bluehost-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bluehost-qt binary to `/usr/bin`
and the `../../share/pixmaps/bluehost128.png` to `/usr/share/pixmaps`

bluehost-qt.protocol (KDE)

