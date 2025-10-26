#!/bin/bash

set -ouex pipefail

# CLI tools
dnf5 install -y hourglass cava fastfetch tmate htop btop aria2 eza bat zoxide starship nushell kf6-servicemenus-imagetools

# Kernel
#rpm-ostree override replace --experimental --freeze --from repo='copr:copr.fedorainfracloud.org:sentry:kernel-blu' kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra

# Drivers
#dnf5 install -y akmod-nvidia xorg-x11-drv-nvidia-cuda

# Apps
dnf5 install -y virt-install libvirt-daemon-config-network libvirt-daemon-kvm qemu-kvm virt-manager virt-viewer libguestfs-tools python3-libguestfs virt-top edk2-ovmf swtpm gparted code merkuro

# Gaming!
dnf5 in -y --setopt=install_weak_deps=False gamemode

# Fonts
dnf5 install -y google-noto-fonts-all jetbrains-mono-fonts-all

# Misc
dnf5 install -y klassy

# Remove unused packages
dnf5 rm -y krfb krfb-libs kde-connect kde-connect-libs kfind filelight sunshine
