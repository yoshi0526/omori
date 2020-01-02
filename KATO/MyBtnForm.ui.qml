import QtQuick 2.4

Item {
    id: element
    width: 80
    height: 40
    property alias mouseArea: mouseArea
    property alias btnTxt: btnTxt
    property bool reverse: false
    property color baseColor: "#01a0a0"
    property color borderColor: "#037878"
    state: !reverse ? "released" : "pushed"
    Rectangle {
        id: body
        color: "#ffffff"
        radius: 5
        border.width: 2
        anchors.fill: parent

        Text {
            id: btnTxt
            text: qsTr("Text")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 18
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Connections {
        target: mouseArea
        onPressed: {
            element.state = !reverse ? "pushed" : "released"
        }
    }

    Connections {
        target: mouseArea
        onReleased: {
            element.state = !reverse ? "released" : "pushed"
        }
    }
    states: [
        State {
            name: "released"

            PropertyChanges {
                target: btnTxt
                color: baseColor
            }

            PropertyChanges {
                target: body
                border.color: baseColor
            }
        },
        State {
            name: "pushed"

            PropertyChanges {
                target: body
                color: baseColor
                border.color: borderColor
            }

            PropertyChanges {
                target: btnTxt
                color: "#ffffff"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:40;width:40}
}
##^##*/

