import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.4

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    background: Rectangle {

        color: "#363636"
    }

    Drawer {
        id: drawer
        width: 0.4 * window.width
        height: window.height
        dragMargin: 25
        background: Rectangle {
            color: "#282933"
        }

        BluetoothListView {
            id: bluetoothList
            anchors.fill: parent
        }
    }
}
