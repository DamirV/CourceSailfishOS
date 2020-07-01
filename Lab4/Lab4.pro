# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = Lab4

CONFIG += sailfishapp

SOURCES += src/Lab4.cpp

DISTFILES += qml/Lab4.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/Lab4.10.1.qml \
    qml/pages/Lab4.2.1.qml \
    qml/pages/Lab4.2.2.qml \
    qml/pages/Lab4.3.1.qml \
    qml/pages/Lab4.3.2.qml \
    qml/pages/Lab4.4.1.qml \
    qml/pages/Lab4.4.2.qml \
    qml/pages/Lab4.5.1.qml \
    qml/pages/Lab4.6.1.qml \
    qml/pages/Lab4.7.1.qml \
    qml/pages/Lab4.8.1.qml \
    qml/pages/Lab4.9.1.qml \
    qml/pages/SecondPage.qml \
    rpm/Lab4.changes.in \
    rpm/Lab4.changes.run.in \
    rpm/Lab4.spec \
    rpm/Lab4.yaml \
    translations/*.ts \
    Lab4.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/Lab4-de.ts
