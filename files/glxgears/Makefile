override CC			:= gcc
override PREFIX		?= /usr
override BINDIR		?= $(PREFIX)/bin
override CFLAGS		+= -I/usr/include/GL -D_GNU_SOURCE -DPTHREADS -Wall -Wpointer-arith -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -fno-strict-aliasing -Wbad-function-cast -Wold-style-definition -Wdeclaration-after-statement -O2 
override LDFLAGS	+= -L$(PREFIX)/lib -lGL -lGLEW -lGLU -lGL -lm -lX11 -lXext

glxgears: glxgears.o
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

glxgears.o: glxgears.c
	$(CC) -c -o $@ $< $(CFLAGS) -MT $< -MD -MP -MF glxgears.Tpo

install: glxgears
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 $< $(DESTDIR)$(BINDIR)

clean:
	rm *.o
	rm glxgears
