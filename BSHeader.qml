import QtQuick 2.7
import QtQuick.Controls 2.0

ToolBar {
    height: 48

    Row {
        anchors.fill: parent
        spacing: 8

        Label {
            id: busNumber
            height: parent.height
            width: height
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: mainWindow.style.accentColor
            text: "23"

            background: Rectangle {
                anchors.fill: busNumber
                color: "black"
            }
        }

        Label {
            height: parent.height
            verticalAlignment: Text.AlignVCenter
            color: "white"
            text: "Valtaraitti"
        }
    }

    background: Rectangle {
        color: style.primaryColor
    }
}
