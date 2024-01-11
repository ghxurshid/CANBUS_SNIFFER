import QtQuick 2.0

Item {
    id: item_text
    property int value
    Text {
        anchors.centerIn: parent
        text: value
        color: "#E1E1E1"
        font.pixelSize: 14
    }
}
