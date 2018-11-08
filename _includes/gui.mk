.PHONY: gui
gui: window_manager wm_compositor status_bar app_launcher

.PHONY: window_manager
window_manager:
	@$(STOW) openbox/

.PHONY: wm_compositor
wm_compositor:
	@$(PACMAN) compton

.PHONY: status_bar
status_bar:
	@$(PACAUR) polybar
	@$(STOW) polybar/

.PHONY: app_launcher
app_launcher:
	@$(PACMAN) rofi
	@$(STOW) rofi/
