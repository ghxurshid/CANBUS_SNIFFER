import QtQuick 2.0

Item {
    id: label_text
    property string label
    Text {
        anchors.centerIn: parent
        text: label_text.label
        color: "#E9E9E9"
        font.pixelSize: 14
        font.bold: true
    }
}
