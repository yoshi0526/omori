import QtQuick 2.4

MyBtnForm {
    id:root
    signal pressed()
    mouseArea.onPressed: root.pressed()
}
