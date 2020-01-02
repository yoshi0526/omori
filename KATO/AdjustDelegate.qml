import QtQuick 2.0

Item {
    width: 400
    height: 40
    id:adjustDelegate
    Row {
        id: delegateRow
        anchors.fill: parent
        spacing: 0
        Rectangle {
            id: nameRect
            width: 240
            height: 40
            Text {
                anchors.fill: parent
                text: name
                anchors.leftMargin: 3
                anchors.rightMargin: 5
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
            }
            color: index%2==1 ? "white":"#a3c2c3"
        }
        MyBtn {
            id: leftBtn
            width: 40
            btnTxt.text: leftBtnTxt
            reverse: true
        }
        Rectangle {
            id: offRect
            x: 0
            width: 80
            height: 40
            color: index%2==1 ? "white":"#a3c2c3"
            Text {
                anchors.fill: parent
                text: Number(value).toFixed(1)
                anchors.rightMargin: 5
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
            }
        }
        MyBtn {
            id: rightBtn
            width: 40
            btnTxt.text: rightBtnTxt
            reverse: true
        }
    }
}


