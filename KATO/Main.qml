import QtQuick 2.4
import io.qt.example.backend 1.0

MainForm {

    property AdjustModel adjustModel:AdjustModel{}
    tabMenuLeft.adjustContent.listView.model:adjustModel
    tabMenuRight.adjustContent.listView.model:adjustModel
    property TempModel tempModel: TempModel{}
    tabMenuLeft.tempContents.listView.model: tempModel
    tabMenuRight.tempContents.listView.model:tempModel


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

    BackEnd {
        id:backend
    }
    tabMenuLeft.operationContents.abilityValue: backend.pkgSpeedCfg
    tabMenuLeft.operationContents.pkgNumValue: backend.numOfPkg
    tabMenuLeft.operationContents.speedValue: backend.pkgSpeedValue
    tabMenuLeft.operationContents.upBtn.onPressed: backend.pkgSpeedCfg++;
    tabMenuLeft.operationContents.downBtn.onPressed: backend.pkgSpeedCfg--;
    tabMenuLeft.operationContents.resetBtn.control.onActivated: backend.reset();
}
