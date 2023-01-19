build:
	: run make install
install:
	mkdir -p $(DESTDIR)/usr/share/pardus/pardus-lightdm-greeter/module
	mkdir -p $(DESTDIR)/usr/bin/
	cp -prfv module/* $(DESTDIR)/usr/share/pardus/pardus-lightdm-greeter/module/
	# install script
	install pardus-login.py $(DESTDIR)/usr/lib/pardus-login
