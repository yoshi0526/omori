import QtQuick 2.4

Item {
    id: mainElement
    width: 800
    height: 600

    Column {
        Header {
            id: header
        }
        Item {
            id: mainScreen
            width: 800
            height: 600 - header.height
            TabMenuForm {
                id: tabMenuLeft
                x: 0
                y: 0
            }

            TabMenuForm {
                id: tabMenuRight
                x: 400
                y: 0
            }
        }
    }
}
