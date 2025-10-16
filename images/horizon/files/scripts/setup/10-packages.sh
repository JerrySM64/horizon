#!/bin/bash

set -ouex pipefail

# Install packages
dnf5 -y remove libva-intel-media-driver

# Niri
dnf5 -y install niri fuzzel nautilus quickshell google-roboto-fonts inter-fonts gpu-screen-recorder brightnessctl ddcutil cliphist cava wlsunset xdg-desktop-portal xdg-desktop-portal-gnome polkit-gnome matugen

dnf5 -y install --allowerasing flatpak onefetch fastfetch java-21-openjdk-devel libadwaita-devel pkgconf neovim eza bat starship hourglass btop git virt-install libvirt-daemon-config-network libvirt-daemon-kvm qemu-kvm virt-manager virt-viewer libguestfs-tools python3-libguestfs virt-top edk2-ovmf swtpm google-noto-fonts-all
dnf5 -y install --setopt=install_weak_deps=False steam gamemode

#### Example for enabling a System Unit File

systemctl enable podman.socket
