# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI="3"

inherit eutils toolchain-funcs

DESCRIPTION="Shared application and Window Manager"
HOMEPAGE="http://www.directfb.org/"
SRC_URI="http://directfb.org/downloads/Extras/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=">=dev-libs/DirectFB-1.4.3[fusion]"

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"
}
