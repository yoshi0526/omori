import QtQuick 2.4

Item {
    id: element
    width: 80
    height: 40
    property alias btnTxt: btnTxt
    property bool reverse: false
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
                color: "#01a0a0"
            }

            PropertyChanges {
                target: body
                border.color: "#01a0a0"
            }
        },
        State {
            name: "pushed"

            PropertyChanges {
                target: body
                color: "#01a0a0"
                border.color: "#037878"
            }

            PropertyChanges {
                target: btnTxt
                color: "#ffffff"
            }
        }
    ]
}
