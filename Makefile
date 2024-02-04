TARGET := iphone:clang:14.5
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BHInsta

BHInsta_FILES = src/Tweak.x $(wildcard *.m modules/JGProgressHUD/*.m)
BHInsta_FRAMEWORKS = UIKit Foundation CoreGraphics Photos CoreServices SystemConfiguration SafariServices Security QuartzCore
BHInsta_PRIVATE_FRAMEWORKS = Preferences
BHInsta_EXTRA_FRAMEWORKS = Cephei CepheiPrefs CepheiUI
BHInsta_CFLAGS = -fobjc-arc -Wno-unsupported-availability-guard -Wno-unused-value -Wno-deprecated-declarations -Wno-nullability-completeness -Wno-unused-function -Wno-incompatible-pointer-types

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += modules/libflex modules/keychainfix

include $(THEOS_MAKE_PATH)/aggregate.mk