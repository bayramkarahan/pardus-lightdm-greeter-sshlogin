build:
	: run make install
install:
	mkdir -p $(DESTDIR)/usr/share/pardus/pardus-lightdm-greeter/module
	mkdir -p $(DESTDIR)/usr/bin/
	cp -prfv module/* $(DESTDIR)/usr/share/pardus/pardus-lightdm-greeter/module/
	# install script
	mkdir -p $(DESTDIR)/usr/lib/
	install pardus-login.py $(DESTDIR)/usr/bin/sshlogin
