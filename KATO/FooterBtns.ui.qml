import QtQuick 2.4
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.0

Item {
    id: footerBtns
    width: 400
    height: 55
    property alias msgTxt4: msgTxt4
    property alias msgTxt3: msgTxt3
    property alias msgTxt2: msgTxt2
    property alias msgTxt1: msgTxt1

    RowLayout {
        id: footerBtmLayout
        spacing: 1
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            width: 99
            height: 55
            color: "#477086"

            Text {
                id: msgTxt1
                x: 102
                y: 0
                width: 93
                color: "#ffffff"
                text: qsTr("")
                wrapMode: Text.WordWrap
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 4
                font.pixelSize: 14
                anchors.fill: parent
                textFormat: Text.PlainText
                anchors.leftMargin: 4
            }
        }

        Rectangle {
            id: rectangle2
            width: 99
            height: 55
            color: "#477086"

            Text {
                id: msgTxt2
                x: -103
                y: -8
                width: 93
                color: "#ffffff"
                text: qsTr("")
                anchors.topMargin: 0
                textFormat: Text.PlainText
                horizontalAlignment: Text.AlignHCenter
                anchors.rightMargin: 4
                anchors.leftMargin: 4
                anchors.bottomMargin: 0
                font.pixelSize: 14
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WordWrap
            }
        }

        Rectangle {
            id: rectangle3
            width: 99
            height: 55
            color: "#477086"

            Text {
                id: msgTxt3
                x: -94
                y: 0
                width: 93
                color: "#ffffff"
                text: qsTr("")
                textFormat: Text.PlainText
                anchors.topMargin: 0
                anchors.leftMargin: 4
                anchors.rightMargin: 4
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 14
                anchors.bottomMargin: 0
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WordWrap
            }
        }

        Rectangle {
            id: rectangle4
            width: 99
            height: 55
            color: "#477086"

            Text {
                id: msgTxt4
                x: -94
                y: 0
                width: 93
                color: "#ffffff"
                text: qsTr("")
                anchors.topMargin: 0
                textFormat: Text.PlainText
                horizontalAlignment: Text.AlignHCenter
                anchors.rightMargin: 4
                anchors.leftMargin: 4
                anchors.bottomMargin: 0
                font.pixelSize: 14
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WordWrap
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:55;width:384}
}
##^##*/
