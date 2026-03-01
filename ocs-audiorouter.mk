######################################
#
# audiorouter
#
######################################
AUDIOROUTER_VERSION = e4995c2093662a6948b8475a015b9fa7437ab7b3
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