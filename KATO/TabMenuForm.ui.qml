import QtQuick 2.14
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.12

Item {
    id: tabMenu
    width: 400
    height: 570
    property alias stackLayout: stackLayout
    property alias tabBar: tabBar

    Rectangle {
        id: background
        anchors.fill: parent
        visible: true

        TabBar {
            id: tabBar
            width: 400
            height: 30
            position: TabBar.Header
            font.pointSize: 8
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            clip: true
            Repeater {
                model: ["運転", "メニュー", "調整", "温度", "スイッチ", "手動単独", "製品変更"]
                TabButton {
                    id: tabBtn
                    text: modelData
                    width: 57
                    height: tabBar.height
                    background: Rectangle {
                        color: tabBar.currentIndex == index ? "#9c95a0" : "#2f979b"
                    }
                }
            }
        }

        StackLayout {
            id: stackLayout
            x: 0
            y: 30
            anchors.top: tabBar.bottom
            anchors.right: tabBar.right
            width: parent.width
            height: 540
            anchors.rightMargin: 0
            // tabBar.height
            anchors.topMargin: 0
            currentIndex: tabBar.currentIndex
            Item {
                id: item1
                Operation {
                    anchors.fill: parent
                }
            }

            Item {
                id: item2
                MenuContents {
                    anchors.fill: parent
                }
            }

            Item {
                id: item3
                AdjustContent {
                    anchors.fill: parent
                }
            }
            Item {
                id: item4
                TempContents {
                    anchors.fill: parent
                }
            }
            Item {
                id: item5
                Switches {
                    anchors.fill: parent
                }
            }

            Item {
                id: item6
                ManualContents {
                    anchors.fill: parent
                }
            }

            Item {
                id: item7
                ProductChgContents {
                    anchors.fill: parent
                }
            }

            Item {
                id: item8
                Conveyor {
                    anchors.fill: parent
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:600;width:400}D{i:1;anchors_height:200;anchors_width:200}
}
##^##*/

