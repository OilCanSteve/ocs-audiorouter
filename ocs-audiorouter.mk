######################################
#
# audiorouter
#
######################################
AUDIOROUTER_VERSION = 96cc3c7552fd274a4cabe87e335fa08088be8093
AUDIOROUTER_SITE = https://github.com/OilCanSteve/ocs-audiorouter
AUDIOROUTER_SITE_METHOD = git
AUDIOROUTER_BUNDLES = ocs-audiorouter.lv2

AUDIOROUTER_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) MOD=1 OPTIMIZATIONS="" PREFIX=/usr -C $(@D)/source

define AUDIOROUTER_BUILD_CMDS
	$(AUDIOROUTER_TARGET_MAKE)
endef

define AUDIOROUTER_INSTALL_TARGET_CMDS
	$(AUDIOROUTER_TARGET_MAKE) install DESTDIR=$(TARGET_DIR)
endef

$(eval $(generic-package))