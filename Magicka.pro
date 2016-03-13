TEMPLATE = app
TARGET = Magicka

#DEFINES -= UNICODE

CONFIG -= qt

win32 {
    #LIBS *= user32.lib
    LIBS += -LC:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\lib
    LIBS += -LC:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\boost\\lib
    release:LIBS += -LC:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\lib\\release
    debug:LIBS += -LC:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\lib\\debug
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\include
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\include\\OIS
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\include\\OGRE
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\boost
    INCLUDEPATH += C:\\Qt\\Library\\Frameworks\\OgreSDK_MinGW_v1-8-1\\boost\\boost
    # If you are using Ogre 1.9 also include the following line:
    # INCLUDEPATH += $(OGRE_HOME)\\include\\OGRE\\Overlay
}
debug {
    #TARGET = $$join(TARGET,,,d)
    LIBS *= -lOgreMain_d -lOIS_d -lboost_system-mgw47-mt-d-1_51 -lboost_chrono-mgw47-mt-d-1_51 -lboost_date_time-mgw47-mt-d-1_51 -lboost_thread-mgw47-mt-d-1_51
    # If you are using Ogre 1.9 also include -lOgreOverlay_d, like this:
    # LIBS *= -lOgreMain_d -lOIS_d -lOgreOverlay_d
}
release {
    LIBS *= -lOgreMain -lOIS -lboost_system-mgw47-mt-1_51 -lboost_chrono-mgw47-mt-1_51 -lboost_date_time-mgw47-mt-1_51 -lboost_thread-mgw47-mt-1_51
    # If you are using Ogre 1.9 also include -lOgreOverlay, like this:
    # LIBS *= -lOgreMain -lOIS -lOgreOverlay
}

SOURCES += \
    main.cpp
