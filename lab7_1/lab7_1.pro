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
TARGET = lab7_1

CONFIG += sailfishapp

SOURCES += src/lab7_1.cpp

DISTFILES += qml/lab7_1.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/Light.qml \
    qml/pages/MyButton.qml \
    qml/pages/SecondPage.qml \
    qml/pages/lab7.1.1 \
    qml/pages/lab7.1.1.qml \
    qml/pages/lab7.3.1.qml \
    qml/pages/lab7.5.1.qml \
    qml/pages/lab7.6.1.qml \
    qml/pages/lab7.7.1.qml \
    rpm/lab7_1.changes.in \
    rpm/lab7_1.changes.run.in \
    rpm/lab7_1.spec \
    rpm/lab7_1.yaml \
    translations/*.ts \
    lab7_1.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/lab7_1-de.ts
