include _includes/_functions.mk

.PHONY: all
all: \
	base \
	locale \
   	timezone \
	gui \
	dev \
	applications

include _includes/base.mk
include _includes/locale.mk
include _includes/timezone.mk
include _includes/gui.mk
include _includes/dev.mk
include _includes/applications.mk
