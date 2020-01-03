import QtQuick 2.4

MainForm {
    tabMenuLeft.onCurrentIndexChanged: {
        console.log("changed right "+ newIndex)
        tabMenuRight.enabled=true
        tabMenuRight.stackLayout.visible=true
        if(newIndex===0)
            tabMenuRight.tabBar.currentIndex=7
        if(newIndex===5 || newIndex===6){
            tabMenuRight.enabled=false
            tabMenuRight.stackLayout.visible=false
        }
    }
}
