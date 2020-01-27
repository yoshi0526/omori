import QtQuick 2.4
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.0

PageForm {
    id: pageForm
    width: 400 // tabMenu.width // 400
    height: 420 // tabMenu.height - header.height //  600 - 60
    property alias downBtn: downBtn
    property alias upBtn: upBtn
    property alias resetBtn: resetBtn
    property real speedValue: 0
    property real abilityValue: 100
    property int pkgNumValue: 20
    title.text: "運転画面"
    page.text: "P1000"

    ColumnLayout {
        x: 0
        anchors.bottom: footerBtns.top
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 30

        RowLayout {
            Layout.preferredWidth: pageForm.width - msgRect.x * 2
            Layout.preferredHeight: 20

            Text {
                id: currentSpeed
                text: qsTr("現在速度")
                font.pixelSize: 25
            }

            Text {
                id: speedValue
                text: pageForm.speedValue.toFixed(1)
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                font.pixelSize: 40
            }

            Text {
                id: unit
                text: qsTr("個/分")
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                horizontalAlignment: Text.AlignRight
                font.pixelSize: 25
            }
        }

        Text {
            id: capacityTxt
            text: qsTr("包装能力（個/分）")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.pixelSize: 25
            Layout.preferredHeight: 30
        }

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.preferredHeight: 30
            MyBtn {
                id: downBtn
                btnTxt.verticalAlignment: Text.AlignVCenter
                btnTxt.horizontalAlignment: Text.AlignHCenter
                Layout.preferredHeight: 60
                Layout.preferredWidth: 80
                btnTxt.text: "\u25bc"
                btnTxt.font.pixelSize: 35
                reverse: true
            }

            TextField {
                id: abilityValueField
                text: pageForm.abilityValue.toFixed(1)
                Layout.preferredHeight: 60
                Layout.preferredWidth: 140
                font.pointSize: 30
                horizontalAlignment: Text.AlignRight
                placeholderText: "0.0"
            }

            MyBtn {
                id: upBtn
                Layout.preferredHeight: 60
                Layout.preferredWidth: 80
                btnTxt.horizontalAlignment: Text.AlignHCenter
                btnTxt.verticalAlignment: Text.AlignVCenter
                btnTxt.fontSizeMode: Text.FixedSize
                btnTxt.text: "\u25b2"
                btnTxt.font.pixelSize: 35
                reverse: true
            }
        }

        Rectangle {
            id: rectangle
            Layout.preferredWidth: pageForm.width - rectangle.x * 2
            color: "#ffffff"
            radius: 5
            Layout.preferredHeight: 120
            border.color: "#10a0a0"

            MyDelayBtn {
                id: resetBtn
                x: 256
                y: 8
                width: 120
                height: 50
                text: qsTr("リセット\n(長押し)")
                font.pixelSize: 16
            }

            Text {
                id: pkgNum
                x: 175
                y: 14
                text: pageForm.pkgNumValue
                textFormat: Text.PlainText
                font.pixelSize: 40
            }

            Text {
                id: capacityTxt1
                x: 14
                y: 21
                text: qsTr("包装個数")
                font.pixelSize: 22
            }

            MyBtn {
                id: jogBtn
                x: 8
                y: 100
                width: 120
                height: 48
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                btnTxt.text: qsTr("寸動運転 切")
            }

            MyBtn {
                id: topSMode
                x: 142
                y: 100
                width: 120
                height: 48
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                btnTxt.wrapMode: Text.NoWrap
                btnTxt.font.pixelSize: 15
                btnTxt.text: qsTr("トップシーラー\n運転")
            }
        }

        Rectangle {
            id: msgRect
            Layout.preferredWidth: pageForm.width - msgRect.x * 2
            color: "#a3c2c3"
            radius: 2
            Layout.preferredHeight: 62

            Text {
                id: msgTxt
                text: qsTr("停止中です。\n起動スイッチの長押しで起動可能です。")
                wrapMode: Text.WordWrap
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                textFormat: Text.PlainText
                font.pixelSize: 18
            }
        }
    }

    FooterBtns {
        id: footerBtns
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        Layout.preferredWidth: pageForm.width
        Layout.preferredHeight: 55
        msgTxt2.text: "超音波\n溶着設定"
    }
}

/*##^##
Designer {
    D{i:1;anchors_y:53}
}
##^##*/

