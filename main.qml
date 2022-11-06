import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
//import QtQuick.Controls.Styles 1.4
//import QtQml.Models 2.12
//import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.12

Window {
    width: 800
    height: 500
    visible: true
    title: qsTr("Archaeopterxy")

    Timer {
        id: dateTimer
        interval: 1000
        repeat: true
        running: true
        property var locale: Qt.locale()
        property date currentDate: new Date()
        property string dateString
        onTriggered:{
            curDateTxt.text = currentDate.toLocaleDateString(locale, Locale.ShortFormat);
        }
    }

    Timer {
        id: clockTimer
        interval: 1000
        repeat: true
        running: true
        onTriggered:{
            curTimeTxt.text =  Qt.formatTime(new Date(),"hh:mm:ss")
        }
    }


    Image {
        id: image
        x: 0
        y: 0
        width: 800
        height: 500
        source: "images/Archaeopteryx-bg-5.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: curTimeTxt
        x: 736
        y: 0
        width: 64
        height: 15
        color: "#ffffff"
        text: qsTr("")
        font.pixelSize: 15
    }

    Text {
        id: curDateTxt
        x: 739
        y: 19
        width: 64
        height: 15
        color: "#ffffff"
        text: qsTr("")
        font.pixelSize: 15
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 800
        height: 500
        color: "#00ffffff"

        Rectangle {
            id: rectangle1
            x: 183
            y: 71
            width: 446
            height: 250
            color: "#99ffffff"
            border.color: "#000000"

            ScrollView {
                id: scrollView
                x: 3
                y: 3
                //width: 439
                //height: 243
                anchors.fill: parent
                width: parent.width
                height: parent.height
                ScrollBar.vertical.policy: ScrollBar.AlwaysOn
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

                TextArea {
                    id: scraperDataTextArea
                    x: -5
                    y: -1
                    width: 436
                    height: 240
                    //width: 603
                    //height: 319
                    color: "#0b89d1"
                    text: qsTr("")
                    wrapMode: Text.Wrap
                    clip: true
                    Component.onCompleted: {
                        mainController.runSpider()

                    }
                    Connections {
                        target: mainController

                        onScrapyDataToQml: {
                        scraperDataTextArea.text += scrapyData_1
                        //statusText.text = "Scan Successful"
                        //}
                    }
                }
            }
        }

    }


        Button {
            id: button
            x: 183
            y: 334
            width: 100
            height: 35
            text: qsTr("Run Spider")
            //border.color: "#000000"
            background: Rectangle {
                color: "#ffffff"
                radius: 50
            }
            layer.effect: DropShadow {
                width: 69
                opacity: 1
                color: "#000000"
                radius: 8
                verticalOffset: 2
                transparentBorder: true
                horizontalOffset: 2
                spread: 0
                samples: 17
            }
            palette.buttonText: "#0b89d1"
            layer.enabled: true
        }

        Button {
            id: button1
            x: 356
            y: 334
            width: 100
            height: 35
            text: qsTr("Stop Spider")
            background: Rectangle {
                color: "#ffffff"
                radius: 50
            }
            layer.effect: DropShadow {
                width: 69
                color: "#000000"
                radius: 8
                verticalOffset: 2
                transparentBorder: true
                horizontalOffset: 2
                spread: 0
                samples: 17
            }
            palette.buttonText: "#0b89d1"
            layer.enabled: true
        }

        Button {
            id: button2
            x: 529
            y: 334
            width: 100
            height: 35
            text: qsTr("Options")
            background: Rectangle {
                color: "#ffffff"
                radius: 50
            }
            layer.effect: DropShadow {
                width: 69
                color: "#000000"
                radius: 8
                verticalOffset: 2
                transparentBorder: true
                horizontalOffset: 2
                spread: 0
                samples: 17
            }
            palette.buttonText: "#0b89d1"
            layer.enabled: true
        }

        Button {
            id: button3
            x: 183
            y: 411
            width: 100
            height: 35
            text: qsTr("Execute ")
            background: Rectangle {
                color: "#ffffff"
                radius: 50
            }
            layer.effect: DropShadow {
                width: 69
                color: "#000000"
                radius: 8
                verticalOffset: 2
                transparentBorder: true
                horizontalOffset: 2
                spread: 0
                samples: 17
            }
            palette.buttonText: "#0b89d1"
            layer.enabled: true
        }

        Rectangle {
            id: textEditBg
            x: 289
            y: 419
            width: 340
            height: 20
            color: "#9affffff"
            border.color: "#000000"

            TextEdit {
                id: textEdit
                x: 2
                y: 2
                width: 336
                height: 16
                color: "#0b89d1"
                text: qsTr("")
                font.pixelSize: 12
                clip: true
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}
}
##^##*/
