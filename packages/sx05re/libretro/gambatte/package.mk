################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="gambatte"
PKG_VERSION="6f3bde124d45836bcb8b328d7c2bd31863a13aba"
PKG_SHA256="c3bd30aecdc8fc743783c139959b7c9e940dadea7cdf480b469173f0588ecb1e"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/gambatte-libretro"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="libretro"
PKG_SHORTDESC="libretro implementation of libgambatte"
PKG_LONGDESC="Gambatte is an open-source Game Boy Color emulator written for fun and made available in the hope that it will be useful."

PKG_IS_ADDON="no"
PKG_TOOLCHAIN="make"
PKG_AUTORECONF="no"

make_target() {
  make -f Makefile.libretro
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp gambatte_libretro.so $INSTALL/usr/lib/libretro/
}