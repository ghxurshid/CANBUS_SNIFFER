import QtQuick 2.15
import Qt.labs.qmlmodels 1.2

TableView {
    anchors.fill: parent
    columnSpacing: 1
    rowSpacing: 1
    clip: true

    model: ListModel {
        id: fruitModel

        ListElement {
            name: "Apple"
            cost: 2.45
        }
        ListElement {
            name: "Orange"
            cost: 3.25
        }
        ListElement {
            name: "Banana"
            cost: 1.95
        }
    }

    delegate: Rectangle {
        implicitWidth: 100
        implicitHeight: 50
        border.width: 1

        Text {
            text: display
            anchors.centerIn: parent
        }
    }
}
