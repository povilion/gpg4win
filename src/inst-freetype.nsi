# inst-freetype.nsi - Installer snippet for Freetype.     -*- coding: latin-1; -*-
# Copyright (C) 2007 g10 Code GmbH
# 
# This file is part of Gpg4win.
# 
# Gpg4win is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# Gpg4win is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301,
# USA.

!ifdef prefix
!undef prefix
!endif
!define prefix ${ipdir}/freetype-${gpg4win_pkg_freetype_version}

!ifdef DEBUG
Section "freetype" SEC_freetype
!else
Section "-freetype" SEC_freetype
!endif
  SetOutPath "$INSTDIR"
!ifdef SOURCES
  File "${gpg4win_pkg_freetype_src}"
!else
  SetOutPath "$INSTDIR\bin"

  File ${prefix}/bin/freetype6.dll

!endif
SectionEnd
