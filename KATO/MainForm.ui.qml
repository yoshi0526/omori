import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.12

Item {
    id: mainElement
    width: 800
    height: 600
    property alias tabMenuRight: tabMenuRight
    property alias tabMenuLeft: tabMenuLeft

    Column {
        spacing: 0
        Header {
            id: header
            width: mainElement.width
            height: mainElement.height / 20
        }
        Item {
            id: mainScreen
            width: mainElement.width - rowLayout.spacing
            height: mainElement.height - header.height

            RowLayout {
                id: rowLayout
                x: 0
                y: 0
                spacing: 1

                TabMenu {
                    id: tabMenuLeft
                    width: mainScreen.width / 2
                    height: mainScreen.height
                    z: 2
                }

                TabMenu {
                    id: tabMenuRight
                    width: mainScreen.width / 2
                    height: mainScreen.height
                }
            }
        }
    }
}
