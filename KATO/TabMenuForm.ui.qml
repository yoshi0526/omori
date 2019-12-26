import QtQuick 2.4
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.12

Item {
    width: 400
    height: 600

    TabBar {
        id: tabBar
        x: 0
        y: 0
        width: 400
        height: 40
        clip: true
        Repeater {
            model: ["Unten", "Menu", "tyousei", "Ondo", "Switch", "Manual", "Products"]
            TabButton {
                text: modelData
                width: Math.max(100, tabBar.width / 6)
            }
        }
    }

    StackLayout {
        id: stackLayout
        anchors.top: tabBar.bottom
        anchors.right: tabBar.right
        width: parent.width
        height: parent.height - tabBar.height
        currentIndex: tabBar.currentIndex
        Item {
            id: item1
            Rectangle {
                anchors.fill: parent
                color: "red"
            }
        }

        Item {
            id: item2
            Rectangle {
                anchors.fill: parent
                color: "blue"
            }
        }

        Item {
            id: item3
            Rectangle {
                anchors.fill: parent
                color: "yellow"
            }
        }
        Item {
            id: item4
            Rectangle {
                anchors.fill: parent
                color: "#38afb6"
            }
        }
        Item {
            id: item5
            Rectangle {
                anchors.fill: parent
                color: "#c1a0a0"
            }
        }

        Item {
            id: item6
            Rectangle {
                anchors.fill: parent
                color: "#d8d781"
            }
        }

        Item {
            id: item7
            Rectangle {
                anchors.fill: parent
                color: "#cd43b5"
            }
        }
    }
}
