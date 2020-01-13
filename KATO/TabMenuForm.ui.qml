import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    id: tabMenu
    //    width: 400
    //    height: 570
    property alias operationContents: operationContents
    property alias switches: switches
    property alias tempContents: tempContents
    property alias adjustContent: adjustContent
    property alias stackLayout: stackLayout
    property alias tabBar: tabBar

    Rectangle {
        id: background
        anchors.fill: parent
        visible: true

        TabBar {
            id: tabBar
            width: tabMenu.width
            height: header.height
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
                    width: tabMenu.width / 7
                    height: tabBar.height
                    background: Rectangle {
                        color: tabBar.currentIndex === index ? "#9c95a0" : "#2f979b"
                    }
                }
            }
        }

        StackLayout {
            id: stackLayout
            anchors.top: tabBar.bottom
            anchors.right: tabBar.right
            width: parent.width
            height: tabMenu.height - tabBar.height
            anchors.rightMargin: 0
            // tabBar.height
            anchors.topMargin: 0
            currentIndex: tabBar.currentIndex
            Item {
                id: item1
                Operation {
                    id: operationContents
                    anchors.fill: parent
                }
            }

            Item {
                id: item2
                MenuContents {
                    id: menuContents
                    anchors.fill: parent
                }
            }

            Item {
                id: item3
                AdjustContent {
                    id: adjustContent
                    anchors.fill: parent
                }
            }
            Item {
                id: item4
                TempContents {
                    id: tempContents
                    anchors.fill: parent
                }
            }
            Item {
                id: item5
                Switches {
                    id: switches
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
