# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
CRATES="
cfg-if-0.1.10
getrandom-0.2.0
libc-0.2.74
ppv-lite86-0.2.8
rand-0.8.0
rand_chacha-0.3.0
rand_core-0.6.0
rand_hc-0.3.0
wasi-0.9.0+wasi-snapshot-preview1
"

inherit cargo

DESCRIPTION="Générateur d'ID FII"
HOMEPAGE="https://github.com/federation-interservices-d-informatique/"
SRC_URI="https://github.com/federation-interservices-d-informatique/fii-id/archive/${PV}.tar.gz $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="Apache-2.0 Apache-2.0 WITH LLVM-exception MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
S="${WORKDIR}/idgen-${PV}" # On old releases, idgen is the name of the gitHub repo
DEPEND="
	!app-misc/fii-id-bin
"
RDEPEND=""

