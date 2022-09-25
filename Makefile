EXE=vissync

BINDIR?=/usr/local/bin/

all:
	@echo 'run make (un)install to (un)install'

install:
	install -d $(BINDIR)
	install $(EXE) $(DESTDIR)$(BINDIR)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)$(EXE)
