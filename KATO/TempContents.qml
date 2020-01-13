import QtQuick 2.0

PageForm {
    width: tabMenu.width // 400
    height: tabMenu.height - header.height //  600 - 60
    property alias listView: listView
    title.text: "温度設定"
    page.text: "P300"
    ListView {
        id: listView
        y: 30
        clip: true
        height: 510
        boundsBehavior: Flickable.DragAndOvershootBounds
        width: 400
        header: TempListHeader {
            z: 2
        }
        anchors.topMargin: 32
        anchors.fill: parent
        delegate: TempDelegate{}
//        model: TempModel{}
    }
}
