TEMPLATE = app
TARGET = Magicka

#DEFINES -= UNICODE

CONFIG -= qt

win32 {
    LIBS *= user32.lib
    LIBS += -LC:\\Qt\\Library\\boost\\Frameworks\\OgreSDK_MinGW_v1-8-1\\lib
    release:LIBS += -LC:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\release
    debug:LIBS += -LC:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\lib\\debug
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\include
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\include\\OIS
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\include\\OGRE
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\boost
    # If you are using Ogre 1.9 also include the following line:
    # INCLUDEPATH += $(OGRE_HOME)\\include\\OGRE\\Overlay
}
debug {
    TARGET = $$join(TARGET,,,d)
    LIBS *= -lOgreMain_d -lOIS_d
    # If you are using Ogre 1.9 also include -lOgreOverlay_d, like this:
    # LIBS *= -lOgreMain_d -lOIS_d -lOgreOverlay_d
}
release {
    LIBS *= -lOgreMain -lOIS
    # If you are using Ogre 1.9 also include -lOgreOverlay, like this:
    # LIBS *= -lOgreMain -lOIS -lOgreOverlay
}
HEADERS += \
    TutorialApplication.h \
    BaseApplication.h

SOURCES += \
    TutorialApplication.cpp \
    BaseApplication.cpp
