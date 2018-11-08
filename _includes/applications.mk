.PHONY: applications
applications: browser media

.PHONY: browser
browser:
	@$(PACMAN) firefox

.PHONY: media
media:
	@$(PACMAN) vlc
	@$(PACAUR) spotify
