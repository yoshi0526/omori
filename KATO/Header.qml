import QtQuick 2.0

Item {
    id:header
    width: 800
    height: 30
    Rectangle {
        id:bkRect
        color: "#3d3f47"
        anchors.fill: parent
        Text {
            id: title
            color: "#ffffff"
            text:"89 20190913 KATO"
            font.pointSize: 16
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 0
        }
        Text {
            id: mark
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            text:"Mark"
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 16
            anchors.verticalCenter: parent.verticalCenter
        }
        Text {
            id: date
            color: "#ffffff"
            text:"2019/10/18 17:08"
            horizontalAlignment: Text.AlignRight
            font.pointSize: 16
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
    }
}
