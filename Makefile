# Config
TIMEZONE	?= America/Sao_Paulo
KEYMAP		?= br abnt2
LOCALE_LANG	?= en_US.UTF-8

SYS_SHELL	?= fish
SYS_SHELL_STOW	?= fish/

SYS_TERM	?= rxvt-unicode-wcwidthcallback
SYS_TERM_STOW	?= X/

SYS_FONTS	?= siji-git nerd-fonts-complete

REPOS_DIR	?= $(HOME)/Repositories
DOTFILES_DIR	?= $(REPOS_DIR)/dotfiles
DOTFILES_REPO	?= https://github.com/nikolvs/dotfiles.git

# Helpers
PACMAN = sudo pacman -Sy --noconfirm
PACAUR = pacaur -Sy --noconfirm

# Functions
define makepkg_build
	mkdir -p /tmp/makepkg-$(1)
	curl -s https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=$(1) -o /tmp/makepkg-$(1)/PKGBUILD
	cd /tmp/makepkg-$(1) && makepkg -si --noconfirm
	rm -rf /tmp/makepkg-$(1)
endef

.PHONY: all
all: base locale timezone fonts shell term

.PHONY: base install_pkgs install_pacaur
base: install_pkgs install_pacaur $(DOTFILES_DIR)

install_pkgs:
	@$(PACMAN) base-devel git stow

install_pacaur:
	@gpg --recv-key 1EB2638FF56C0C53 # Dave Reisner
	@$(call makepkg_build,cower)
	@$(call makepkg_build,pacaur)

$(DOTFILES_DIR):
	@mkdir -p $(REPOS_DIR)
	@git clone $(DOTFILES_REPO) $(DOTFILES_DIR)
	@cd $(DOTFILES_DIR) && git submodule update --init

.PHONY: locale
locale:
	@sudo sed -i 's/#$(LOCALE_LANG)/$(LOCALE_LANG)/' /etc/locale.gen
	@sudo locale-gen
	@echo $(LOCALE_LANG) | sudo tee /etc/locale.conf
	@localectl set-x11-keymap $(KEYMAP)

.PHONY: timezone
timezone:
	@timedatectl set-timezone $(TIMEZONE)

.PHONY: shell
shell:
	@$(PACMAN) $(SYS_SHELL)
	@chsh -s `which $(SYS_SHELL)`

.PHONY: term
term:
	@$(PACAUR) $(SYS_TERM)
	@cd $(DOTFILES_DIR) && stow -t $(HOME) $(SYS_TERM_STOW)

.PHONY: fonts
fonts:
	@$(PACAUR) $(SYS_FONTS)
