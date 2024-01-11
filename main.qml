import QtQuick 2.11
import QtQuick.Controls 2.4

ApplicationWindow  {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    background: Rectangle {
        id: background
        anchors.fill: parent
        color: "#1A1C22"
    }

    Drawer {
        id: drawer
        width: 200
        height: parent.height
        dragMargin: 30

        topInset: 10
        bottomInset: 10
        leftInset: 10
        rightInset: 10

        topPadding: 15
        bottomPadding: 15
        leftPadding: 15
        rightPadding: 15

        background: Rectangle {
            color: "#191B1F"

            Rectangle {
                width: 1
                color: "#414246"
                anchors {
                    top: parent.top
                    right: parent.right
                    bottom: parent.bottom
                }
            }
        }

        contentItem: BluetoothListView {
            id: bluetooth_list
        }
    }

    CanFrameTableView {
        id: can_frames_list
        anchors.fill: parent
    }
}
