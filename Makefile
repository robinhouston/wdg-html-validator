FILES=bin/validate etc share
wdg-html-validator.tgz:
	tar zcf $@ Makefile -C root/usr/local $(FILES)

PREFIX=/usr/local
install:
	mkdir -p $(PREFIX)
	tar cf - $(FILES) | tar xvf - -C $(PREFIX)
