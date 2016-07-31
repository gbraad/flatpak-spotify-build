#!/bin/sh
wget https://sdk.gnome.org/keys/gnome-sdk.gpg
flatpak --user remote-add --gpg-import=gnome-sdk.gpg gnome http://sdk.gnome.org/repo/
flatpak --user install gnome org.freedesktop.Sdk 1.4
flatpak --user install gnome org.freedesktop.Platform 1.4
git clone https://gitlab.com/gbraad/flatpak-spotify.git spotify-app --depth 1
cd spotify-app
make
flatpak build-bundle repo spotify.flatpak com.spotify.Client

