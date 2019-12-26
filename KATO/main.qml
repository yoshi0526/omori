import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: main.width
    height: main.height
    title: qsTr("Hello World")
    Main {
        id:main
    }
}
