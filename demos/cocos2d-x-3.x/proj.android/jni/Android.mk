LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/Demo.cpp \
                   ../../Classes/VisibleRect.cpp \
                   ../../Classes/examples/DemoChaseStarling.cpp \
                   ../../Classes/examples/DemoDragonBoy.cpp \
                   ../../Classes/examples/DemoKnight.cpp

LOCAL_SRC_FILES += ../../../../dragonbones/animation/Animation.cpp \
                   ../../../../dragonbones/animation/AnimationState.cpp \
                   ../../../../dragonbones/animation/TimelineState.cpp \
                   ../../../../dragonbones/animation/WorldClock.cpp \
                   ../../../../dragonbones/core/Armature.cpp \
                   ../../../../dragonbones/core/Bone.cpp \
                   ../../../../dragonbones/core/Object.cpp \
                   ../../../../dragonbones/core/Slot.cpp \
                   ../../../../dragonbones/events/EventData.cpp \
                   ../../../../dragonbones/factories/BaseFactory.cpp \
                   ../../../../dragonbones/parsers/BaseDataparser.cpp \
                   ../../../../dragonbones/parsers/ConstValues.cpp \
                   ../../../../dragonbones/parsers/XMLDataParser.cpp \
                   ../../../../dragonbones/parsers/dbtinyxml2.cpp

LOCAL_SRC_FILES += ../../../../renderer/cocos2d-x-3.x/DBCCArmature.cpp \
                   ../../../../renderer/cocos2d-x-3.x/DBCCArmatureNode.cpp \
                   ../../../../renderer/cocos2d-x-3.x/DBCCFactory.cpp \
                   ../../../../renderer/cocos2d-x-3.x/DBCCSlot.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../../dragonbones
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../../renderer/cocos2d-x-3.x

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static

# LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
# LOCAL_WHOLE_STATIC_LIBRARIES += cocosbuilder_static
# LOCAL_WHOLE_STATIC_LIBRARIES += spine_static
# LOCAL_WHOLE_STATIC_LIBRARIES += cocostudio_static
# LOCAL_WHOLE_STATIC_LIBRARIES += cocos_network_static
# LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static


include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
$(call import-module,audio/android)

# $(call import-module,Box2D)
# $(call import-module,editor-support/cocosbuilder)
# $(call import-module,editor-support/spine)
# $(call import-module,editor-support/cocostudio)
# $(call import-module,network)
# $(call import-module,extensions)
