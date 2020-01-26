import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.12

Item {
    id: mainElement
    width: 1000 // 800
    height: 500 // 600
    property alias tabMenuRight: tabMenuRight
    property alias tabMenuLeft: tabMenuLeft

    ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        spacing: 0
        Header {
            id: header
            Layout.fillWidth: true
            Layout.preferredWidth: 800 // mainElement.width
            Layout.preferredHeight: 30 // mainElement.height/20
            //            width: mainElement.width
            //            height: mainElement.height / 20
        }
        Item {
            id: mainScreen
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredWidth: mainElement.width - rowLayout.spacing
            Layout.preferredHeight: mainElement.height - header.height

            RowLayout {
                id: rowLayout
                //                x: 0
                //                y: 0
                spacing: 1

                TabMenu {
                    id: tabMenuLeft
                    Layout.fillWidth: true
                    Layout.preferredWidth: mainScreen.width / 2
                    Layout.preferredHeight: mainScreen.height
                    z: 2
                }

                TabMenu {
                    id: tabMenuRight
                    Layout.fillWidth: true
                    Layout.preferredWidth: mainScreen.width / 2
                    Layout.preferredHeight: mainScreen.height
                }
            }
        }
    }
}
