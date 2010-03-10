# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/DirectFB/DirectFB-1.4.3.ebuild,v 1.1 2010/01/16 05:21:06 vapier Exp $

inherit eutils toolchain-funcs

DESCRIPTION="Shared application and Window Manager"
HOMEPAGE="http://www.directfb.org/"
SRC_URI="http://directfb.org/downloads/Extras/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=">=dev-libs/DirectFB-1.4.3"

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"
}
