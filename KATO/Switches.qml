import QtQuick 2.0

PageForm {
    width: tabMenu.width // 400
    height: tabMenu.height - header.height //  600 - 60
    title.text: "スイッチ画面"
    page.text: "P140"
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
        delegate: SwitchesDelegate {}
        model: SwitchesModel{}
    }
}
