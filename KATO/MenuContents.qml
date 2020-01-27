import QtQuick 2.0
import QtQuick.Layouts 1.0

PageForm {
    width: 400 // tabMenu.width // 400
    height: 540 // tabMenu.height - header.height //  600 - 60
    title.text: "メニュー"
    page.text: "P131"
    property int headHeight: 30

    Flickable {
        y: headHeight
        width: parent.width
        height: parent.height
        contentWidth: 400
        contentHeight: 540
        clip: true
        Text {
            id: configTxt
            x: 8
            y: 32 - headHeight
            text: qsTr("設定")
            font.pixelSize: 12
        }

        RowLayout {
            x: 8
            y: 51 - headHeight

            MyBtn {
                id: cumBtn
                width: 60
                height: 55
                btnTxt.text: "フィルム\nカム"
                btnTxt.font.pixelSize: 12
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: convBtn
                btnTxt.text: "トップ\n基準カム"
                btnTxt.font.pixelSize: 12
                width: 60
                height: 55
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: filmBtn
                btnTxt.text: "コンベア\nカム"
                btnTxt.font.pixelSize: 12
                width: 60
                height: 55
                reverse: true
                baseColor: "#4b488b"
                borderColor: "#433780"
            }

            MyBtn {
                btnTxt.text: "トップ\nカム"
                btnTxt.font.pixelSize: 12
                id: topcumBtn
                width: 60
                height: 55
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: basecumBtn
                btnTxt.text: "基準\nカム"
                btnTxt.font.pixelSize: 12
                width: 60
                height: 55
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }
        }

        RowLayout {
            x: 8
            y: 107 - headHeight
            MyBtn {
                id: cumBtn1
                width: 60
                height: 55
                btnTxt.font.pixelSize: 12
                btnTxt.text: "シフト\nレジスタ"
                borderColor: "#438F4B"
                baseColor: "#38723a"
                reverse: true
            }

            MyBtn {
                id: convBtn1
                width: 60
                height: 55
                btnTxt.font.pixelSize: 12
                btnTxt.text: "タイマー"
                borderColor: "#438F4B"
                baseColor: "#38723a"
                reverse: true
            }

            MyBtn {
                id: filmBtn1
                width: 60
                height: 55
                btnTxt.font.pixelSize: 12
                btnTxt.text: "カウンタ"
                borderColor: "#438F4B"
                baseColor: "#38723a"
                reverse: true
            }

            MyBtn {
                id: topcumBtn1
                width: 60
                height: 55
                btnTxt.font.pixelSize: 12
                btnTxt.text: "カスタム\nデータ"
                borderColor: "#438F4B"
                baseColor: "#38723a"
                reverse: true
            }
        }

        RowLayout {
            x: 8
            y: 163 - headHeight
            height: 55
            MyBtn {
                id: cumBtn2
                width: 60
                height: 55
                btnTxt.font.pixelSize: 12
                btnTxt.text: "トップ\n偏差"
                borderColor: "#438f4b"
                baseColor: "#38723a"
                reverse: true
            }

            MyBtn {
                id: convBtn2
                width: 60
                height: 55
                btnTxt.font.pixelSize: 12
                btnTxt.text: "目盛\n位置"
                borderColor: "#438f4b"
                baseColor: "#38723a"
                reverse: true
            }
        }

        Rectangle {
            id: line
            x: 0
            y: 278 - headHeight
            width: 400
            height: 2
            color: "#000000"
        }

        Text {
            id: monitorTxt
            x: 8
            y: 280 - headHeight
            text: qsTr("モニタ")
            font.pixelSize: 12
        }

        RowLayout {
            x: 8
            y: 293 - headHeight
            height: 55
            MyBtn {
                id: cumBtn3
                width: 60
                height: 50
                opacity: 0
                visible: true
                btnTxt.font.pixelSize: 12
                btnTxt.text: "フィルム\nカム"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: convBtn3
                width: 60
                height: 50
                btnTxt.font.pixelSize: 12
                btnTxt.text: "入出力\n信号"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: filmBtn2
                width: 60
                height: 50
                btnTxt.font.pixelSize: 12
                btnTxt.text: "原点\n信号"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: topcumBtn2
                width: 60
                height: 50
                btnTxt.font.pixelSize: 12
                btnTxt.text: "速度\nトルク"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: basecumBtn1
                width: 60
                height: 50
                btnTxt.font.pixelSize: 12
                btnTxt.text: "マーク\nモニタ"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: basecumBtn2
                width: 60
                height: 50
                btnTxt.font.pixelSize: 12
                btnTxt.text: "包装機\nﾏﾆｭｱﾙ"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }
        }

        RowLayout {
            x: 8
            y: 347 - headHeight
            height: 50
            MyBtn {
                id: cumBtn4
                width: 60
                height: 50
                btnTxt.font.pixelSize: 12
                btnTxt.text: "生産\n管理"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: convBtn4
                width: 60
                height: 50
                opacity: 0
                btnTxt.font.pixelSize: 12
                btnTxt.text: "トップ\n基準カム"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: filmBtn3
                width: 60
                height: 50
                btnTxt.font.pixelSize: 12
                btnTxt.text: "個数\nカウンタ"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }

            MyBtn {
                id: topcumBtn3
                width: 60
                height: 50
                btnTxt.font.pixelSize: 12
                btnTxt.text: "異常\n履歴"
                borderColor: "#433780"
                baseColor: "#4b488b"
                reverse: true
            }
        }

        Rectangle {
            id: line1
            x: 0
            y: 400 - headHeight
            width: 400
            height: 2
            color: "#000000"
        }

        Text {
            id: monitorTxt1
            x: 8
            y: 403 - headHeight
            text: qsTr("データ")
            font.pixelSize: 12
        }

        RowLayout {
            x: 8
            y: 219 - headHeight
            height: 55
            MyBtn {
                id: cumBtn5
                width: 60
                height: 55
                btnTxt.font.pixelSize: 12
                btnTxt.text: "オン\nデマンド"
                reverse: true
            }
        }

        RowLayout {
            x: 8
            y: 427 - headHeight

            MyBtn {
                id: myBtn
                Layout.preferredHeight: 55
                Layout.preferredWidth: 60
                reverse: true
                btnTxt.font.pixelSize: 12
                btnTxt.text: "製品\n登録"
                borderColor: "#033836"
                baseColor: "#004C4A"
            }

            MyBtn {
                id: myBtn1
                Layout.preferredHeight: 55
                Layout.preferredWidth: 60
                btnTxt.font.pixelSize: 12
                btnTxt.text: "製品\n削除"
                borderColor: "#8d253e"
                baseColor: "#8b4052"
                reverse: true
            }

            MyBtn {
                id: myBtn2
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "速度\n温度"
                Layout.preferredHeight: 55
                reverse: true
            }

            MyBtn {
                id: myBtn3
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "印字\nｵﾌｾｯﾄ"
                Layout.preferredHeight: 55
                reverse: true
            }

            MyBtn {
                id: myBtn4
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "カット\n位置調整"
                Layout.preferredHeight: 55
                reverse: true
            }
        }

        RowLayout {
            x: 8
            y: 483 - headHeight
            MyBtn {
                id: myBtn5
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "機械\nデータ"
                Layout.preferredHeight: 55
                reverse: true
            }

            MyBtn {
                id: myBtn6
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "トップ\n停止角度"
                Layout.preferredHeight: 55
                reverse: true
            }

            MyBtn {
                id: myBtn7
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "時計調整"
                Layout.preferredHeight: 55
                reverse: true
            }

            MyBtn {
                id: myBtn8
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "転送"
                Layout.preferredHeight: 55
                reverse: true
            }

            MyBtn {
                id: myBtn9
                opacity: 0
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "時計調整"
                Layout.preferredHeight: 55
                reverse: true
            }

            MyBtn {
                id: myBtn10
                btnTxt.font.pixelSize: 12
                Layout.preferredWidth: 60
                btnTxt.text: "機種\n情報"
                Layout.preferredHeight: 55
                reverse: true
            }
        }
    }
}


