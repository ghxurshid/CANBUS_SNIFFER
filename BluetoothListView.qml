import QtQuick 2.4
import QtQuick.Controls 2.4

ListView {
    anchors.fill: parent
    model: 5

    header: Item {
        id: header
        height: 40
        width: parent.width
        Text {
            id: headerText
            text: qsTr("Header")
        }
    }

    delegate: ItemDelegate {
        text: qsTr("Delegate " + index)
    }

    footer: Item {
        id: footer
        height: 55
        width: parent.width
        Text {
            id: footerText
            text: qsTr("Header")
        }
    }
}
