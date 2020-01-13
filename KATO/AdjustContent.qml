import QtQuick 2.0

PageForm {
    width: tabMenu.width // 400
    height: tabMenu.height - header.height //  600 - 60
    property alias listView: listView
    title.text: "調整"
    page.text: "P200"

    ListView {
        id: listView
        y: 30
        clip: true
        height: 510
        anchors.topMargin: 32
        anchors.fill: parent
        delegate:AdjustDelegate {}
//        model:AdjustModel {}
    }

}

/*##^##
Designer {
    D{i:1;anchors_height:160;anchors_width:110;anchors_x:97;anchors_y:168}
}
##^##*/
