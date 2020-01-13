import QtQuick 2.4

Item {
    id: root
    width: tabMenu.width // 400
    height: tabMenu.height - header.height //  600 - 60
    property alias page: page
    property alias title: title

    Rectangle {
        id: bkRect
        color: "#ffffff"
        anchors.fill: parent

        Rectangle {
            id: header
            width: root.width
            height: 32
            color: "#187677"

            Text {
                id: title
                height: 30
                color: "#e9dede"
                text: "TitleText"
                anchors.left: parent.left
                anchors.leftMargin: 5
                anchors.verticalCenterOffset: 0
                font.pointSize: 25
                anchors.verticalCenter: parent.verticalCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 20
            }

            Text {
                id: page
                x: 0
                y: -2
                height: 30
                color: "#e9dede"
                text: "PXXX"
                anchors.right: parent.right
                anchors.rightMargin: 5
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 25
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
            }
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200}
}
##^##*/

