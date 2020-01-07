import QtQuick 2.12

TabMenuForm {
    signal currentIndexChanged(int newIndex)
    tabBar.onCurrentIndexChanged: {
        currentIndexChanged(tabBar.currentIndex)
    }
}

