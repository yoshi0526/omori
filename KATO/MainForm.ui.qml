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
        }
        Item {
            id: mainScreen
            width: 800 - rowLayout.spacing
            height: mainElement.height - header.height

            RowLayout {
                id: rowLayout
                x: 0
                y: 0
                spacing: 1

                TabMenu {
                    id: tabMenuLeft
                    height: mainScreen.height
                    z: 2
                }

                TabMenu {
                    id: tabMenuRight
                    height: mainScreen.height
                }
            }
        }
    }
}
