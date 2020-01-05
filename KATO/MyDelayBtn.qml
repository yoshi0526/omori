import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12

Rectangle {
    id:root
    width: 120
    height: 80
    clip: true
    radius: 5
    property alias control: control
    property alias text: control.text
    property alias font: control.font
    border.width: 2
    border.color:  "#01a0a0"

    DelayButton {
          id: control
          checked: false
          text: qsTr("Delay\nButton")
          anchors.rightMargin: 2
          anchors.leftMargin: 2
          anchors.bottomMargin: 2
          anchors.topMargin: 2
          anchors.fill: parent
          delay: 1000
          contentItem: Text {
              text: control.text
              font: control.font
              textFormat: Text.PlainText
              color: "#01a0a0"
              horizontalAlignment: Text.AlignHCenter
              verticalAlignment: Text.AlignVCenter
//              elide: Text.ElideRight
          }          
          background: Rectangle {
              implicitWidth: 100
              implicitHeight: 40
              color: "#ffffff"

              PaddedRectangle {
                  padding: control.visualFocus ? 2 : 0
                  width: control.progress * parent.width
                  height: parent.height
                  color: "#b6ebeb" // Color.blend(control.palette.dark, control.palette.mid, control.down ? 0.5 : 0.0)
              }
          }
    }
}



/*##^##
Designer {
    D{i:0;height:59;width:120}D{i:1;anchors_x:12;anchors_y:8}
}
##^##*/
