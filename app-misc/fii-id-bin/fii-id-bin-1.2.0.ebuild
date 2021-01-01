# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="FII ID generator"
HOMEPAGE="https://github.com/federation-interservices-d-informatique"
SRC_URI="https://github.com/federation-interservices-d-informatique/idgen/releases/download/1.2.0/fii-id.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/fii-id"

src_install() {
	exeinto /usr/bin
	doexe "${S}/fii-id"
}
