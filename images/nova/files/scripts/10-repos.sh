#!/bin/bash

set -ouex pipefail

dnf5 -y install wget dnf5-plugins

# Enable RPMFusion
dnf5 -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# VSCode
rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo

# Enable Alx's OBS repo for hourglass
dnf5 -y config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/home:Alxhr0/Fedora_42/home:Alxhr0.repo

# Enable COPR Repositories
dnf5 -y copr enable ryanabx/cosmic-epoch
dnf5 -y copr enable alternateved/eza
dnf5 -y copr enable atim/starship
dnf5 -y copr enable sentry/kernel-blu

# Enable Steam repo
dnf5 -y config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-steam.repo