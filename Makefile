# Config
SYS_SHELL	?= fish
TIMEZONE	?= America/Sao_Paulo
KEYMAP		?= br abnt2
LOCALE_LANG	?= en_US.UTF-8
REPOS_DIR	?= $(HOME)/Repositories
DOTFILES_DIR	?= $(REPOS_DIR)/dotfiles
DOTFILES_REPO	?= https://github.com/nikolvs/dotfiles.git

# Helpers
PACMAN = sudo pacman -Sy --noconfirm

.PHONY: all
all: base locale timezone shell

.PHONY: base install_pkgs
base: install_pkgs $(DOTFILES_DIR)

install_pkgs:
	@$(PACMAN) git stow

$(DOTFILES_DIR):
	@mkdir -p $(REPOS_DIR)
	@git clone $(DOTFILES_REPO) $(DOTFILES_DIR)

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
