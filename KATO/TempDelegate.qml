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
            }
        }
        Rectangle {
            id: nameRect
            x: 0
            width: 210
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
        Rectangle {
            id: setRect
            x: 0
            width: 40
            height: 40
            color: index%2==1 ? "white":"#a3c2c3"
            Text {
                anchors.fill: parent
                text: Number(settingValue).toFixed(1)
                anchors.rightMargin: 0
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
        Rectangle {
            id: currentRect
            x: 0
            width: 40
            height: 40
            color: index%2==1 ? "white":"#a3c2c3"
            Text {
                anchors.fill: parent
                text: Number(currentValue).toFixed(1)
                anchors.rightMargin: 0
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }


    }
}


