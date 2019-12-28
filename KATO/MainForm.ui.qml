import QtQuick 2.4
import QtQuick.Layouts 1.0

Item {
    id: mainElement
    width: 800
    height: 600

    Column {
        spacing: 1
        Header {
            id: header
        }
        Item {
            id: mainScreen
            width: 800 - rowLayout.spacing
            height: 600 - header.height

            RowLayout {
                id: rowLayout
                x: 0
                y: 0
                spacing: 1

                TabMenuForm {
                    id: tabMenuLeft
                }

                TabMenuForm {
                    id: tabMenuRight
                }
            }
        }
    }
}
