# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit perl-module git-2

DESCRIPTION="redis failover scripts"
HOMEPAGE="https://github.com/adjust/redis_failover"
SRC_URI=""
EGIT_REPO_URI="https://github.com/adjust/redis_failover.git"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	virtual/perl-Module-Build
	dev-perl/Moo
	dev-perl/Redis
	dev-perl/yaml
	dev-perl/Linux-Inotify2
"

RDEPEND="${DEPEND}"

src_install() {
	perl-module_src_install
	newinitd "${FILESDIR}/failover_watch" failover_watch
}