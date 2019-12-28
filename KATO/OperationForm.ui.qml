import QtQuick 2.4
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.0

PageForm {
    width: 400
    height: 600 - 60
    title.text: "Operation"
    page.text: "P1000"

    Text {
        id: capacityTxt
        x: 21
        y: 136
        text: qsTr("Capacity per min.")
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

        MyBtn {
            id: resetBtn
            x: 256
            y: 8
            width: 120
            height: 59
            btnTxt.wrapMode: Text.NoWrap
            btnTxt.textFormat: Text.PlainText
            btnTxt.text: qsTr("Reset \n(Nagaoshi)")
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
            x: 13
            y: 23
            text: qsTr("Num of Pkg")
            font.pixelSize: 25
        }

        MyBtn {
            id: jogBtn
            x: 8
            y: 100
            width: 120
            height: 48
            btnTxt.text: "JOG mode"
        }

        MyBtn {
            id: topSMode
            x: 142
            y: 100
            width: 120
            height: 48
            btnTxt.text: "Top S mode"
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
        x: 21
        y: 53

        Text {
            id: currentSpeed
            text: qsTr("Current Speed")
            font.pixelSize: 25
        }

        Text {
            id: speedValue
            text: qsTr("0.0")
            font.pixelSize: 40
        }

        Text {
            id: unit
            text: qsTr("per min.")
            font.pixelSize: 25
        }
    }

    Rectangle {
        id: msgRect
        x: 8
        y: 412
        width: 384
        height: 67
        color: "#a3c2c3"

        Text {
            id: msgTxt
            text: "Stopping\\nBoot after long pressed button"
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.PlainText
            font.pixelSize: 20
        }
    }

    RowLayout {
        id: btmLayout
        x: 8
        y: 479
        width: 384
        height: 61

        Rectangle {
            id: rectangle1
            width: 93
            height: 55
            color: "#477086"
        }

        Rectangle {
            id: rectangle2
            width: 93
            height: 55
            color: "#477086"

            Text {
                id: msgTxt1
                x: -87
                y: -79
                width: 93
                color: "#ffffff"
                text: "Ultrasonic \\nWerdering"
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
            id: rectangle3
            width: 93
            height: 55
            color: "#477086"
        }

        Rectangle {
            id: rectangle4
            width: 93
            height: 55
            color: "#477086"
        }
    }
}

/*##^##
Designer {
    D{i:17;anchors_height:42;anchors_width:223;anchors_x:18;anchors_y:8}D{i:21;anchors_height:42;anchors_width:223;anchors_x:18;anchors_y:8}
}
##^##*/
