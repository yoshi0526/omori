import QtQuick 2.0
import QtQuick.Controls 2.13

Item {
    width: 400
    height: 40
    id:tempDelegate
    Row {
        id: delegateRow
        anchors.fill: parent
        spacing: 1
        Rectangle {
            id: idRect
            width: 40
            height: 40
            Text {
                anchors.fill: parent
                text: index
                anchors.leftMargin: 3
                anchors.rightMargin: 5
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            color: index%2==1 ? "white":"#a3c2c3"
        }
        Rectangle {
            id: switchBk
            width: 70
            height: 40
            color: index%2==1 ? "white":"#a3c2c3"
            MySwitch {
                id: mySwitch
                x: 0
                y: 0
                width: 70
                checked: stateSwitch==="on"? true:false
            }
            Text {
                anchors.verticalCenter: switchBk.verticalCenter
                id: switchTxt
                text: mySwitch.checked? qsTr("入") : qsTr("切")
                font.pointSize: 8
                x: mySwitch.checked? 15:40
                width: 15
                color: mySwitch.checked? "#ffffff" : "#000000"
            }
        }
        Rectangle {
            id: nameRect
            x: 0
            width: 290
            height: 40
            color: index%2==1 ? "white":"#a3c2c3"
            Text {
                anchors.fill: parent
                text: name
                anchors.rightMargin: 5
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
            }
        }
    }
}


