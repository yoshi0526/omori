import QtQuick 2.0

PageForm {
    id: pageForm
    width: tabMenu.width*2 // 400*2
    height: tabMenu.height - header.height //  600 - 60
    title.text: "手動運転"
    page.text: "P1101"

    Text {
        id: element
        x: 213
        y: 236
        width: 423
        height: 232
        color: "#eb2525"
        text: qsTr("Uncer Construction !")
        font.pixelSize: 40
    }
}
