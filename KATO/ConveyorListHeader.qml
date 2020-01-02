import QtQuick 2.0

Item {
    width: 400
    height: 40
    Row {
        anchors.fill: parent
        spacing: 1
        Rectangle {
            id: idrect
            width: 40
            height: 40
            Text {
                color: "#ffffff"
                text: "ID"
                anchors.fill: parent
                font.pointSize: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            color:"#187677"
        }
        Rectangle {
            id: nameRect
            height: 40
            width: 240
            Text {
                color: "#ffffff"
                text: "名称"
                anchors.fill: parent
                font.pointSize: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            color: "#187677"
        }
        Rectangle {
            id: onRect
            width: 60
            height: 40
            Text {
                width: 40
                color: "#ffffff"
                text: "ON\n(mm)"
                anchors.fill: parent
                textFormat: Text.PlainText
                font.pointSize: 14
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            color: "#187677"
        }
        Rectangle {
            id: offRect
            x: 0
            width: 60
            height: 40
            Text {
                width: 40
                color: "#ffffff"
                text: "OFF\n(mm)"
                anchors.fill: parent
                font.pointSize: 14
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            color: "#187677"
        }
    }
}

/*##^##
Designer {
    D{i:3;anchors_width:200}D{i:4;anchors_width:200}
}
##^##*/
