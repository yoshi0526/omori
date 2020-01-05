import QtQuick 2.0

PageForm {
    id: pageForm
    width: 400*2
    height: 600 - 60
    title.text: "製品運転"
    page.text: "P1021"

    Item {
        id: element1
        x: 312
        y: 200
        width: 200
        height: 200
        rotation: 45.91

        Text {
            id: element
            x: 198
            y: 217
            width: 443
            height: 58
            text: qsTr("Under Construction ...")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 40
        }
    }
}
