DIRS=bin share
INSTALL_DIRS=`find $(DIRS) -type d 2>/dev/null`
INSTALL_FILES=`find $(DIRS) -type f 2>/dev/null`

PREFIX?=/usr/local

install:
	for dir in $(INSTALL_DIRS); do mkdir -p $(DESTDIR)$(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp $$file $(DESTDIR)$(PREFIX)/$$file; done

uninstall:
	rm -Rf $(DESTDIR)$(PREFIX)/share/elm-new
	rm -f $(DESTDIR)$(PREFIX)/share/man/man1/elm-new.1
	rm -f $(DESTDIR)$(PREFIX)/bin/elm-new

test:
	./test.sh bin/elm-new

.PHONY: install uninstall test
