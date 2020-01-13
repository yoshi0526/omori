import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    id:header
//    width: 800
//    height: 30

    property string currentDateTime: ""

    Timer{
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            currentDateTime = Qt.formatDateTime(new Date, "yyyy年MM月dd日　hh時mm分ss秒");
        }
    }

    Rectangle {
        id:bkRect
        color: "#3d3f47"
        anchors.fill: parent
        Text {
            id: title
            y: 0
            color: "#ffffff"
            text:"89 20190913 KATO"
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 12
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Text {
            id: range
            y: 0
            height: 16
            color: "#ffffff"
            text: qsTr("165.0mm")
            font.pointSize: 10
            anchors.right: date.left
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: date
            y: 0
            color: "#ffffff"
            text: currentDateTime
            horizontalAlignment: Text.AlignRight
            font.pointSize: 10
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 0
        }

        RowLayout {
            x: 0
            y: -1
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: mark
                color: "#ffffff"
                text:"マーク:"
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 12
            }

            MyBtn {
                id: myBtn
                x: 68
                width: 50
                height: 30
                reverse: true
                btnTxt.text: "有り"
            }

        }


    }
}
