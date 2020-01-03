import QtQuick 2.14

TabMenuForm {
    signal currentIndexChanged(int newIndex)
    tabBar.onCurrentIndexChanged: {
        currentIndexChanged(tabBar.currentIndex)
    }
}

