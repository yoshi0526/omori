import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

PageForm {
    id: pageForm
    width: 400 // tabMenu.width // 400
    height: 540 // tabMenu.height - header.height //  600 - 60
    property alias footerBtns: footerBtns
    title.text: "コンベアカム"
    page.text: "P350"

    property real m_current: 97.8
    property real m_max: 203.0

    ColumnLayout {
        x: 0
        width: 400
        spacing: 5
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.bottom: pageForm.bottom

        Item {
            id: opeItems
            height: 40
            Layout.preferredHeight: 80
            Layout.preferredWidth: pageForm.width

            RowLayout {
                x: 247
                y: 20
                spacing: 9

                Text {
                    id: jogTxt
                    text: qsTr("寸動運転")
                    font.pixelSize: 18
                }

                MyBtn {
                    id: myBtn
                    Layout.preferredHeight: 40
                    Layout.preferredWidth: 48
                    btnTxt.text: "切"
                }
            }

            ColumnLayout {
                x: 35
                y: 10

                Text {
                    id: currentTxt
                    text: qsTr("現在値\t") + m_current + qsTr(" mm")
                    font.pixelSize: 18
                }

                Text {
                    id: maxTxt
                    text: qsTr("最大値\t") + m_max + qsTr(" mm")
                    font.pixelSize: 18
                }
            }
        }

        ListView {
            id: listView
            clip: true
            focus: true
            Layout.fillHeight: true
            Layout.preferredHeight: 350
            Layout.preferredWidth: pageForm.width
            header: ConveyorListHeader {
                width: pageForm.width
                z: 2
            }
            headerPositioning: ListView.OverlayHeader
            model: ConveyorModel {}
            delegate: ConveyorDelegate {
                width: pageForm.width
            }
        }

        FooterBtns {
            id: footerBtns
            Layout.bottomMargin: 4
            Layout.preferredWidth: pageForm.width
            Layout.preferredHeight: 55
            msgTxt1.text: "<"
            msgTxt1.font.pixelSize: 30
            msgTxt4.text: ">"
            msgTxt4.font.pixelSize: 30
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:507;anchors_y:0}
}
##^##*/

