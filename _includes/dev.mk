.PHONY: dev
dev: terminal shell editor fonts

.PHONY: terminal
terminal:
	@$(PACMAN) alacritty

.PHONY: shell
shell:
	@$(PACMAN) fish
	@$(STOW) fish/
	@chsh -s `which fish`

.PHONY: editor
editor:
	@$(PACMAN) gvim
	@$(STOW) vim/

.PHONY: fonts
fonts:
	@$(PACAUR) \
		siji-git \
	   	nerd-fonts-complete
