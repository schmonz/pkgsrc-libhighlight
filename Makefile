# $NetBSD: Makefile,v 1.9 2014/08/18 01:21:49 schmonz Exp $

.include "../../textproc/highlight/Makefile.common"

PKGNAME=		libhighlight-${VERSION}
COMMENT+=		 (shared library)

USE_LIBTOOL=		yes

BUILD_TARGET=		lib-shared

EGDIR=			${PREFIX}/share/examples/highlight
CONF_FILES=		${EGDIR}/filetypes.conf			\
			${PKG_SYSCONFDIR}/filetypes.conf

INSTALLATION_DIRS=	lib

post-install:
	${LIBTOOL} --mode=install ${INSTALL_LIB} ${WRKSRC}/src/libhighlight.la \
		${DESTDIR}${PREFIX}/lib/

.include "../../mk/bsd.pkg.mk"
