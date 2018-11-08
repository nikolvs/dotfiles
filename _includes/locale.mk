LOCALE_LANG		?= en_US.UTF-8
LOCALE_KEYMAP	?= br abnt2

.PHONY: locale
locale:
	@sudo sed -i 's/#$(LOCALE_LANG)/$(LOCALE_LANG)/' /etc/locale.gen
	@sudo locale-gen
	@echo $(LOCALE_LANG) | sudo tee /etc/locale.conf
	@localectl set-x11-keymap $(LOCALE_KEYMAP)
