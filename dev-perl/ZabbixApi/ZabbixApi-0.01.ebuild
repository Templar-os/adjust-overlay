# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit perl-module
inherit git-2

DESCRIPTION="perl zabbix bindings"
HOMEPAGE="https://github.com/adjust/zabbix-api"
SRC_URI=""
EGIT_REPO_URI="https://github.com/adeven/zabbix-api"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-perl/Moo dev-perl/JSON dev-perl/libwww-perl"

RDEPEND="${DEPEND}"
