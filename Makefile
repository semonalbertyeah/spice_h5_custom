#   Copyright (C) 2012 by Jeremy P. White <jwhite@codeweavers.com>
#
#   This file is part of spice-html5.
#
#   spice-html5 is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Lesser General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   spice-html5 is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Lesser General Public License for more details.
#
#   You should have received a copy of the GNU Lesser General Public License
#   along with spice-html5.  If not, see <http://www.gnu.org/licenses/>.
#

datadir := /usr/share/

.PHONY: install

install:
	find . \( -iname '*.html' -or -iname '*.js' -or -iname '*.css' \) -exec install --mode=644 -D {} $(datadir)/novnc/spice/{} \;
