import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

PageForm {
    id: pageForm
    width: 400
    height: 600 - 60
    property alias footerBtns: footerBtns
    title.text: "コンベアカム"
    page.text: "P350"

    property real m_current: 97.8
    property real m_max: 203.0

    FooterBtns {
        id: footerBtns
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        msgTxt1.text: "<"
        msgTxt1.font.pixelSize: 30
        msgTxt4.text: ">"
        msgTxt4.font.pixelSize: 30
    }

    ListView {
        id: listView
        clip: true
        focus: true
        x: 0
        y: 109
        width: 400
        height: 371
        header: ConveyorListHeader {
            z: 5
        }
        headerPositioning: ListView.OverlayHeader
        model: ConveyorModel {}
        delegate: ConveyorDelegate {}
    }

    ColumnLayout {
        x: 35
        y: 44

        Text {
            id: currentTxt
            text: qsTr("現在値\t") + m_current + qsTr(" mm")
            font.pixelSize: 18
        }

        Text {
            id: maxTxt
            text: qsTr("最大値\t") + m_max + qsTr(" mm")
            font.pixelSize: 18
        }
    }

    RowLayout {
        x: 247
        y: 54
        spacing: 9

        Text {
            id: jogTxt
            text: qsTr("寸動運転")
            font.pixelSize: 18
        }

        MyBtn {
            id: myBtn
            Layout.preferredHeight: 40
            Layout.preferredWidth: 48
            btnTxt.text: "切"
        }
    }
}
