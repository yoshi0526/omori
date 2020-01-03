import QtQuick 2.4
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.0

PageForm {
    id: pageForm
    width: 400
    height: 600 - 60
    title.text: "運転画面"
    page.text: "P1000"

    Text {
        id: capacityTxt
        x: 21
        y: 136
        text: qsTr("包装能力（個/分）")
        font.pixelSize: 25
    }

    Rectangle {
        id: rectangle
        x: 8
        y: 248
        width: 384
        height: 158
        color: "#ffffff"
        radius: 5
        border.color: "#10a0a0"

        MyDelayBtn {
            id: resetBtn
            x: 256
            y: 8
            width: 120
            height: 59
            text: qsTr("リセット\n(長押し)")
            font.pixelSize: 16
        }

        Text {
            id: pkgNum
            x: 175
            y: 14
            text: qsTr("387")
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
            btnTxt.text: qsTr("寸動運転 切")
        }

        MyBtn {
            id: topSMode
            x: 142
            y: 100
            width: 120
            height: 48
            btnTxt.wrapMode: Text.NoWrap
            btnTxt.font.pixelSize: 15
            btnTxt.text: qsTr("トップシーラー\n運転")
        }
    }

    RowLayout {
        x: 45
        y: 174

        MyBtn {
            id: upBtn
            Layout.preferredHeight: 60
            Layout.preferredWidth: 80
            btnTxt.text: "\u25bc"
            btnTxt.font.pixelSize: 35
            reverse: true
        }

        TextField {
            id: textField
            text: qsTr("100.0")
            Layout.preferredHeight: 60
            Layout.preferredWidth: 112
            font.pointSize: 30
            horizontalAlignment: Text.AlignRight
            placeholderText: "0.0"
        }

        MyBtn {
            id: downBtn
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

    RowLayout {
        x: 8
        y: 53
        width: 375
        height: 46

        Text {
            id: currentSpeed
            text: qsTr("現在速度")
            font.pixelSize: 25
        }

        Text {
            id: speedValue
            text: qsTr("0.0")
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

    Rectangle {
        id: msgRect
        x: 8
        y: 412
        width: 384
        height: 62
        color: "#a3c2c3"
        radius: 2

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

    FooterBtns {
        id: footerBtns
        x: 8
        y: 480
        width: parent.width
        height: 55
        anchors.horizontalCenter: parent.horizontalCenter
        msgTxt2.text: "超音波\n溶着設定"
    }
}

/*##^##
Designer {
    D{i:17;anchors_height:42;anchors_width:223;anchors_x:18;anchors_y:8}
}
##^##*/

