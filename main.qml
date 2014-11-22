import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.1
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 640
    height: 480
    title: qsTr("ForeignReader")

    menuBar: MenuBar {
        Menu {
            //title: qsTr("                                           ")
           // MenuItem {
           //     text: qsTr("&Open")
           //     onTriggered: console.log("Open action triggered");
           // }
           // MenuItem {
           //     text: qsTr("Exit")
           //     onTriggered: Qt.quit();
           // }
        }
    }
////////////////////////////////////////

   ////////////////////////////////////////////////////////////

    Rectangle {
        id: rectangle1
        x: 320
        y: 0
        width: 0
        height: 480
        antialiasing: true;
        color: "#00000000"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: b
        text: "it's working!"
    }
    TextArea {
        style: TextAreaStyle {
           // backgroundColor:"#fcceee"
        }
        id: textArea1
        text: b.text
        readOnly: true
        textColor: "#000000"
        anchors.right: rectangle1.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: rectangle1.bottom
        anchors.topMargin: -428
    }

    TextArea {
        style: TextAreaStyle {
            //backgroundColor:"#ccceee"
        }
        id: textArea2
        x: 320
        readOnly: true
        text:":("
        textColor: "#890505"
        anchors.left: rectangle1.right
        anchors.leftMargin: 1
        anchors.right: parent.right
        anchors.rightMargin: -1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: rectangle1.bottom
        anchors.topMargin: -428
    }





/*
    Item {
        width: 320;
        height: 240;

        Item {
            id: container2;
            anchors.centerIn: parent;
            width:  rect.width  + (2 * rectShadow2.radius);
            height: rect.height + (2 * rectShadow2.radius);
            anchors.verticalCenterOffset: 16
            anchors.horizontalCenterOffset: 16

            Rectangle {
                id: rect
                width: 100;
                height: 50;
               // color: "orange";
                //radius: 7;
                antialiasing: true;
                border {
                    width: 1;
                    color: "black";
                }
                anchors.centerIn: parent;
            }
        }
        DropShadow {
            id: rectShadow2;
            anchors.fill: source
            cached: true;
            horizontalOffset: 0;
            verticalOffset: 3;
            radius: 8.0;
            samples: 16;
            color: "#80000000";
            smooth: true;
            source: container2;
        }
    }
    */
    Item{
        id: item1
        height: 246
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

    Item{
        id: container;
        height: 56
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.verticalCenter: parent.verticalCenter


        Rectangle {
            id: rect
            y: 0
            height: 54
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.verticalCenterOffset: -96
            antialiasing: true;

        }
    }
    DropShadow {
        id: rectShadow;
        x: 0
        y: 0
        anchors.fill: source
        cached: true;
        horizontalOffset: 0;
        verticalOffset: 1;
        radius: 14.0;
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        samples: 32;
        color: "#80000000";
        smooth: true;
        source: container;

        Label {
            id: label1
            text: qsTr("Name of book")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 202
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 240
            anchors.right: parent.right
            anchors.rightMargin: 240
            style: Text.Normal
            font.bold: false
            font.family: "Verdana"
            font.pointSize: 17
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
Image {
    id: imageadd
    x: -2
    y: 2
    width: 38
    height: 38
    anchors.left: parent.left
    anchors.leftMargin: 5
    anchors.topMargin: 9
    sourceSize.height: 36
    source: "qrc:/C:/Users/Jan/Documents/Хакатон/icns/Add-icn2.png"
    anchors.top: parent.top
    sourceSize.width: 36
    MouseArea {
        id: mouseArea2
        width: 38
        height: 38
        anchors.left: parent.left
        anchors.leftMargin: -2
        anchors.topMargin: -2
        anchors.top: parent.top
        onPressed:
            imageadd.source = "qrc:/C:/Users/Jan/Documents/Хакатон/icns/Add-icn2(pressed).png"
        onReleased:
            imageadd.source = "qrc:/C:/Users/Jan/Documents/Хакатон/icns/Add-icn2.png"
    }
}
Image {
    id: imagesettings
    x: 591
    //margintop: 1;
    width: 38
    height: 38
    anchors.right: parent.right
    anchors.rightMargin: 5
    anchors.top: parent.top
    anchors.topMargin: 9
    source: "qrc:/C:/Users/Jan/Documents/Хакатон/icns/settings-icn2.png"
    sourceSize.height: 36
    sourceSize.width: 36
    state: "RELEASED"
    MouseArea {
        id: mouseArea1
        x: -2
        width: 38
        height: 38
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: -2
        onPressed:{
            imagesettings.state  = "PRESSED"
            imagesettings.source = "qrc:/C:/Users/Jan/Documents/Хакатон/icns/settings-icn2(pressed).png"
            console.log(imagesettings.state)
        }
        onReleased:{
            imagesettings.state  = "RELEASED"
            imagesettings.source = "qrc:/C:/Users/Jan/Documents/Хакатон/icns/settings-icn2.png"
            console.log(imagesettings.state)
            console.log(textArea2.text)
        }
        states: [
            State {
                name: "PRESSED"
                PropertyChanges {
                    target: textArea2;
                    //TextAreaStyle{  backgroundColor:"#ccceee"}
                    }

                }





        ]

    }
    // source: qsTr("/C:/Users/Jan/Documents/Хакатон/icns/settings-icn2.png")
}
}
