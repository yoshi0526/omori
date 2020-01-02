import QtQuick 2.0

Item {
    width: 400
    height: 40
    id:converyDelegate
    Row {
        id: delegateRow
        anchors.fill: parent
        spacing: 1
        MyBtn {
            id: idBtn
            width: 40
            height: 40
            btnTxt.text: index
            reverse: true
        }
        Rectangle {
            id: nameRect
            width: 240
            height: 40
            Text {
                anchors.fill: parent
                text: name
                anchors.rightMargin: 5
                font.pointSize: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
            }
            color: index%2==1 ? "white":"#a3c2c3"
        }
        Rectangle {
            id: onRect
            width: 60
            height: 40
            Text {
                width: 40
                anchors.fill: parent
                text: on
                anchors.rightMargin: 4
                font.pointSize: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
            }
            color: index%2==1 ? "white":"#a3c2c3"
        }
        Rectangle {
            id: offRect
            x: 0
            width: 60
            height: 40
            Text {
                anchors.fill: parent
                text: off
                anchors.rightMargin: 5
                font.pointSize: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
            }
//            color: index%2==1 ? "white":"#a3c2c3"
            color: ListView.isCurrentItem ? "red":"white"
        }
    }
}

/*##^##
Designer {
    D{i:3;anchors_width:200}
}
##^##*/
