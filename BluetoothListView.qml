import QtQuick 2.11
import QtQuick.Controls 2.4

ListView {
    id: listView
    clip: true
    model: 5

    headerPositioning: ListView.OverlayFooter
    footerPositioning: ListView.OverlayFooter

    header: Rectangle {
        id: header
        height: 40
        anchors.left: parent.left
        anchors.right: parent.right
        color: "#1F1F1F"
        z: 2

        Text {
            id: header_text
            text: qsTr("Bluetooth devices")
            font.bold: true
            font.pixelSize: 14
            color: "#EFEFEF"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.topMargin: 10
        }

        Rectangle {
            id: delimiter
            height: 2
            width: 30
            color: "#D3D3D3"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
        }
    }

    delegate: Item {
        id: delegate
        height: 44
        anchors.left: parent.left
        anchors.right: parent.right
        z: 1

        Image {
            id: blutooth_icon
            height: 25
            width: 25
            opacity: 0.86
            anchors {
                left: parent.left
                leftMargin: 10
                verticalCenter: parent.verticalCenter
            }
            source: "img/bluetooth_icon.png"
        }

        Text {
            id: device_name
            font {
                bold: true
                pixelSize: 12
            }
            color: "#ACACAC"
            anchors.left: blutooth_icon.right
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.topMargin: 8
            text: qsTr("Device " + index)
        }

        Text {
            id: device_address
            font {
                italic: true
                pixelSize: 10
            }
            color: "#ABABAB"
            anchors.left: blutooth_icon.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.bottomMargin: 8
            text: qsTr(index + " [0C:21:DE:AD:54:C6]")
        }
    }

    footer: Item {
        id: footer
        height: 55
        anchors.left: parent.left
        anchors.right: parent.right
        z: 2

        Rectangle {
            id: delimiter_footer
            height: 2
            width: 30
            color: "#D3D3D3"
            anchors.left: parent.left
            anchors.top: parent.top
        }
    }
}
