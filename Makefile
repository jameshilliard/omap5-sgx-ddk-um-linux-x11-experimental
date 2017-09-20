DESTDIR ?= ${DISCIMAGE}
TARGET_PRODUCT ?= jacinto6evm
SRCDIR = ./targetfs/${TARGET_PRODUCT}

prefix = /usr
etcdir = /etc
locdir = ${prefix}/local
libdir = ${prefix}/lib

all:

install: 
	mkdir -p ${DESTDIR}${etcdir}
	mkdir -p ${DESTDIR}${locdir}
	mkdir -p ${DESTDIR}${libdir}
	cp -ar ${SRCDIR}/etc/* ${DESTDIR}${etcdir}
	cp -ar ${SRCDIR}/local/* ${DESTDIR}${locdir}
	cp -ar ${SRCDIR}/lib/* ${DESTDIR}${libdir}
