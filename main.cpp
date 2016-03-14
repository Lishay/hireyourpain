//#include <iostream>

//#include "Ogre.h"
//#include <OIS/OIS.h>


//int main()
//{
//    std::string resourcePath;

//        #if OGRE_PLATFORM == OGRE_PLATFORM_APPLE
//            resourcePath = Ogre::macBundlePath() + "/Contents/Resources/";
//        #else
//        resourcePath = "";
//        #endif

//    Ogre::Root* root = new Ogre::Root(resourcePath + "plugins.cfg", resourcePath + "ogre.cfg", "Ogre.log");

//    if (!root->showConfigDialog())
//        return -1;

//    Ogre::ConfigFile cf;
//    cf.load(resourcePath + "resources.cfg");

//    // Go through all sections & settings in the file
//    Ogre::ConfigFile::SectionIterator seci = cf.getSectionIterator();

//    Ogre::String secName, typeName, archName;
//    while (seci.hasMoreElements())
//    {
//        secName = seci.peekNextKey();
//        Ogre::ConfigFile::SettingsMultiMap *settings = seci.getNext();
//        Ogre::ConfigFile::SettingsMultiMap::iterator i;
//        for (i = settings->begin(); i != settings->end(); ++i)
//        {
//            typeName = i->first;
//            archName = i->second;

//            #if OGRE_PLATFORM == OGRE_PLATFORM_APPLE || OGRE_PLATFORM == OGRE_PLATFORM_IPHONE
//                            if (!Ogre::StringUtil::startsWith(archName, "/", false)) // only adjust relative dirs
//                                archName = Ogre::String(Ogre::macBundlePath() + "/" + archName);
//            #endif

//            Ogre::ResourceGroupManager::getSingleton().addResourceLocation(archName, typeName, secName);
//        }
//    }

//    Ogre::ResourceGroupManager::getSingleton().initialiseAllResourceGroups();

//    Ogre::RenderWindow* window = root->initialise(true);
//    Ogre::SceneManager* smgr = root->createSceneManager(Ogre::ST_GENERIC);

//    //Input Stuff
//    size_t windowHnd = 0;
//    window->getCustomAttribute("WINDOW", &windowHnd);
//    OIS::InputManager* im = OIS::InputManager::createInputSystem(windowHnd);
//    OIS::Keyboard* keyboard = static_cast<OIS::Keyboard*>(im->createInputObject(OIS::OISKeyboard, true));

//    while (1)
//    {
//        Ogre::WindowEventUtilities::messagePump();

//        keyboard->capture();

//        if (keyboard->isKeyDown(OIS::KC_ESCAPE))
//            break;

//        if(root->renderOneFrame() == false)
//            break;
//    }

//    im->destroyInputObject(keyboard);
//    im->destroyInputSystem(im);
//    im = 0;

//    delete root;
//    return 0;
// }

#include <QApplication>
#include <QWidget>
#include "ogrewidget.h"
#include <QVBoxLayout>

int main(int argc, char *argv[])
{
    //new Ogre::Root("");
    QApplication app(argc, argv);

    QWidget window;

    window.resize(800, 600);
    window.setWindowTitle("Simple example");

    OgreWidget* ogreWidget = new OgreWidget;

    QVBoxLayout *layout = new QVBoxLayout;
    layout->addWidget(ogreWidget);

    window.setLayout(layout);
    window.show();

    return app.exec();
}
