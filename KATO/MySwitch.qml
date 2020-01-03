import QtQuick 2.0
import QtQuick.Controls 2.12

Switch {
    id:control
    width: 70
    height: 40
    spacing: checked ? -48 : -20
    display: AbstractButton.TextBesideIcon
    font.pointSize: 10
}


