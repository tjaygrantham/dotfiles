#!/bin/sh

ln -sf /usr/share/themes/rose-pine-dawn-gtk/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk.css
gsettings set org.gnome.desktop.interface gtk-theme "rose-pine-dawn-gtk"
gsettings set org.gnome.desktop.interface icon-theme "rose-pine-dawn-icons"
gsettings set org.gnome.desktop.wm.preferences theme "rose-pine-dawn-gtk"
gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
