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
            width: 70
            Text {
                color: "#ffffff"
                text: "ｽｲｯﾁ"
                anchors.fill: parent
                font.pointSize: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            color: "#187677"
        }
        Rectangle {
            id: onRect
            width: 210
            height: 40
            Text {
                width: 40
                color: "#ffffff"
                text: "名称"
                anchors.fill: parent
                textFormat: Text.PlainText
                font.pointSize: 14
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            color: "#187677"
        }
        Rectangle {
            id: setRect
            x: 0
            width: 40
            height: 40
            Text {
                width: 40
                color: "#ffffff"
                text: "設定\n（℃）"
                anchors.fill: parent
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            color: "#187677"
        }
        Rectangle {
            id: currentRect
            x: 0
            width: 40
            height: 40
            Text {
                width: 40
                color: "#ffffff"
                text: "現在\n（℃）"
                anchors.fill: parent
                font.pointSize: 12
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
