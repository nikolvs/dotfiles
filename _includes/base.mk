.PHONY: base
base: install_pkgs install_pacaur

.PHONY: install_pkgs
install_pkgs:
	@$(PACMAN) \
		base-devel \
	   	stow

.PHONY: install_pacaur
install_pacaur:
	@gpg --recv-key 1EB2638FF56C0C53 # Dave Reisner
	@$(call makepkg_build,cower)
	@$(call makepkg_build,pacaur)
