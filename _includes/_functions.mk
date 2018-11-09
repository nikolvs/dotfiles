PACMAN 	= sudo pacman -Sy --noconfirm
PACAUR 	= pacaur -Sy --noconfirm --noedit
STOW 	= stow -t $(HOME)

define makepkg_build
	mkdir -p /tmp/makepkg-$(1)
	curl -s https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=$(1) -o /tmp/makepkg-$(1)/PKGBUILD
	cd /tmp/makepkg-$(1) && makepkg -si --noconfirm
	rm -rf /tmp/makepkg-$(1)
endef
