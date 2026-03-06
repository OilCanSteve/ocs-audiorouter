######################################
#
# audiorouter
#
######################################
OCS_AUDIOROUTER_VERSION = 140d9b76601a906ef25e30334d0cb08a381730f9
OCS_AUDIOROUTER_SITE = https://github.com/OilCanSteve/ocs-audiorouter
OCS_AUDIOROUTER_SITE_METHOD = git
OCS_AUDIOROUTER_BUNDLES = ocs-audiorouter.lv2

OCS_AUDIOROUTER_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) MOD=1 OPTIMIZATIONS="" PREFIX=/usr -C $(@D)/source

define OCS_AUDIOROUTER_BUILD_CMDS
	$(OCS_AUDIOROUTER_TARGET_MAKE)
endef

define OCS_AUDIOROUTER_INSTALL_TARGET_CMDS
	$(OCS_AUDIOROUTER_TARGET_MAKE) install DESTDIR=$(TARGET_DIR)
endef

$(eval $(generic-package))
