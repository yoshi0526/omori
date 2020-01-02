import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.12

Item {
    id: mainElement
    width: 800
    height: 600

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

                TabMenuForm {
                    id: tabMenuLeft
                    height: mainScreen.height
                }

                ColumnLayout {
                    id: columnLayout
                    width: 100
                    height: 100
                    spacing: 0

                    Rectangle {
                        id: rectangle
                        width: 400
                        height: 30
                        color: "#ffffff"
                    }

                    ConveyorForm { height: mainScreen.height-30}

                }


            }
        }
    }
}
