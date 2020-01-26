import QtQuick 2.0
import QtQuick.Layouts 1.12

Item {
    width: 400
    height: 40
    id:converyDelegate
    RowLayout {
        id: delegateRow
        anchors.fill: parent
        spacing: 1
        Rectangle {
            id: idBtn
            width: 40
            height: 40
            radius: 5
            border.width: 2
            color: converyDelegate.ListView.isCurrentItem ? "#e47d15":"#01a0a0"
            border.color: "#037878"
            Text {
                color: "#ffffff"
                anchors.fill: parent
                text: index
                anchors.rightMargin: 0
                font.pointSize: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    listView.currentIndex=index
                    console.log("clicked index:"+ index + " currentIndex:" +
                           listView.currentIndex
                                + "isCurent?+" + converyDelegate.ListView.isCurrentItem )
                }
            }

        }
        Rectangle {
            id: nameRect
            Layout.fillWidth: true
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
            color: index%2==1 ? "white":"#a3c2c3"
//            color: converyDelegate.ListView.isCurrentItem ? "red":"white"
        }
    }
}


