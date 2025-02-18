# Copyright (C) 2025 Jelly Terra. All rights reserved.

{ pkgs, ... }: { programs.nix-ld.libraries = with pkgs; [

nextcloud-client
thunderbird
vlc

emacs
vscode

bluespec
iverilog
verilator

espflash
flashrom
scrcpy

cmake
gnumake
ninja

electron
jdk21
nodejs
nushell
tcl

kdePackages.flatpak-kcm
kdePackages.kate

android-tools
bubblewrap
busybox
dnsutils
git
killall
mtr
usbutils
wget
wineWowPackages.staging
xfsprogs
zip

SDL
SDL2
SDL2_image
SDL2_mixer
SDL2_ttf
SDL_image
SDL_mixer
SDL_ttf
alsa-lib
at-spi2-atk
at-spi2-core
atk
bzip2
cairo
cups
curl
dbus
dbus-glib
desktop-file-utils
e2fsprogs
expat
flac
fontconfig
freeglut
freetype
fribidi
fuse
fuse3
gcc
gdk-pixbuf
glew110
glib
gmp
gst_all_1.gst-plugins-base
gst_all_1.gst-plugins-ugly
gst_all_1.gstreamer
gtk2
gtk3
harfbuzz
icu
jdk21
keyutils.lib
libGL
libGLU
libappindicator-gtk2
libcaca
libcanberra
libcap
libclang
libdbusmenu
libdrm
libgcrypt
libgpg-error
libidn
libjack2
libjpeg
libmikmod
libogg
libpng12
libpulseaudio
librsvg
libsamplerate
libtheora
libtiff
libudev0-shim
libusb1
libuuid
libvdpau
libvorbis
libvpx
libxcrypt-legacy
libxkbcommon
libxml2
mesa
ncurses5
nspr
nss
openssl
p11-kit
pango
pixman
pkg-config
python3
speex
tbb
vulkan-loader
wayland
xorg.libICE
xorg.libSM
xorg.libX11
xorg.libXScrnSaver
xorg.libXcomposite
xorg.libXcursor
xorg.libXdamage
xorg.libXext
xorg.libXfixes
xorg.libXft
xorg.libXi
xorg.libXinerama
xorg.libXmu
xorg.libXrandr
xorg.libXrender
xorg.libXt
xorg.libXtst
xorg.libXxf86vm
xorg.libpciaccess
xorg.libxcb
xorg.xcbutil
xorg.xcbutilimage
xorg.xcbutilkeysyms
xorg.xcbutilrenderutil
xorg.xcbutilwm
xorg.xkeyboardconfig
xz
zlib

]; }
