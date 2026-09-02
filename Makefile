SHELL=/bin/bash
APP="plasma-sync"
ORIGDIR="usr/local/bin"
DESTDIR=
BINDIR=${DESTDIR}/usr/local/bin
INFODIR="${DESTDIR}/usr/share/doc/$APP"
MODE=664
DIRMODE=755

.PHONY: build

install:
	@echo "            Script $APP"
	@echo ":: Aguarde, instalando software $APP em: ${BINDIR}"
	@install -Dm755 "${ORIGDIR}/${APP}" "${BINDIR}/${APP}"
	@install -d ${INFODIR}/
	@cp Makefile README.md ${INFODIR}/
	@echo ":: Feito! $APP software instalado em: ${BINDIR}"
	@echo
uninstall:
	@rm ${BINDIR}/$APP
	@rm -rf ${INFODIR}
	@echo "$APP foi removido."
