PREFIX ?= /usr/local
CC ?= cc
LDFLAGS = -lX11

output: dwmblocks.c blocks.h
	${CC}  dwmblocks.c $(LDFLAGS) -o dwmblocks
clean:
	rm -f *.o *.gch dwmblocks
install: output
	sudo mkdir -p $(DESTDIR)$(PREFIX)/bin
	sudo install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
