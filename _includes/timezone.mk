TIMEZONE ?= America/Sao_Paulo

.PHONY: timezone
timezone:
	@timedatectl set-timezone $(TIMEZONE)
