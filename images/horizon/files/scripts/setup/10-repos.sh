#!/bin/bash

set -ouex pipefail

dnf5 -y install wget dnf5-plugins

# Enable RPMFusion
dnf5 -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Enable Alx's OBS repo for hourglass
dnf5 -y config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/home:Alxhr0/Fedora_42/home:Alxhr0.repo

# Enable COPR Repositories
dnf5 -y copr enable yalter/niri
dnf5 -y copr enable errornointernet/quickshell
dnf5 -y copr enable burhanverse/inter-fonts
dnf5 -y copr enable brycensranch/gpu-screen-recorder-git
dnf5 -y copr enable wef/cliphist
dnf5 -y copr enable purian23/matugen
dnf5 -y copr enable alternateved/eza
dnf5 -y copr enable atim/starship

# Enable Steam repo
dnf5 -y config-manager addrepo --from-repofile=https://negativo17.org/repos/fedora-steam.repo

