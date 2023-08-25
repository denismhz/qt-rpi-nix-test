import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Window {
    id: mainWindow
    minimumHeight: 600
    minimumWidth: 1200
    maximumHeight: 600
    maximumWidth: 1200
    visible: true
    title: qsTr("RPi test")
    flags: Qt.FramelessWindowHint;
    ColumnLayout {
        anchors.fill: parent
        RowLayout {
            Button {
                text: "Ok"
                onClicked: layout.currentIndex < layout.count ? layout.currentIndex++ : layout.currentIndex = layout.currentIndex
            }
            Button {
                text: "Cancel"
                onClicked: mainWindow.close()
            }
            Button {
                text: "Previous"
                onClicked: layout.currentIndex > 0 ? layout.currentIndex-- : layout.currentIndex = layout.currentIndex
            }
            Button {
                text: "Next"
                onClicked: layout.currentIndex < layout.count-1 ? layout.currentIndex++ : layout.currentIndex = layout.currentIndex
            }
            Button {
                text: "Idontknow"
                onClicked: model.submit()
            }
            Button {
                text: "Anotherone"
                onClicked: model.revert()
            }
        }
        StackLayout {
            id: layout
            //anchors.fill: parent
            currentIndex: 1
            Rectangle {
                color: 'teal'
                implicitWidth: 200
                implicitHeight: 200
            }
            Rectangle {
                color: 'plum'
                implicitWidth: 300
                implicitHeight: 200
            }
            Rectangle {
                color: 'steelblue'
                implicitWidth: 300
                implicitHeight: 200
            }
            Rectangle {
                color: 'darkorchid'
                implicitWidth: 300
                implicitHeight: 200
            }
            Rectangle {
                color: 'lightgreen'
                implicitWidth: 300
                implicitHeight: 200
            }
        }
    }
}
