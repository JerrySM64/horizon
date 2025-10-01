#!/bin/bash

set -ouex pipefail

# Install packages
dnf5 -y remove libva-intel-media-driver vlc*
dnf5 -y install --allowerasing @cosmic-desktop-environment flatpak onefetch fastfetch java-21-openjdk-devel libadwaita-devel pkgconf neovim eza bat starship hourglass btop git virt-install libvirt-daemon-config-network libvirt-daemon-kvm qemu-kvm virt-manager virt-viewer libguestfs-tools python3-libguestfs virt-top edk2-ovmf swtpm google-noto-fonts-all
dnf5 -y install --setopt=install_weak_deps=False steam gamemode

# Replace Kernel
rpm-ostree override replace --experimental --freeze --from repo='copr:copr.fedorainfracloud.org:sentry:kernel-blu' kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra

#### Example for enabling a System Unit File

systemctl enable podman.socket
