import QtQuick 2.7

import Material 0.1
ActionBar {
    backgroundColor: style.primaryColor

    Row {
        anchors.fill: parent
        spacing: 8

        Label {
            id: busNumber
            height: parent.height
            width: height
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: Constants.titleFontSize
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
            font.pointSize: Constants.titleFontSize
            color: "white"
            text: "Valtaraitti"
        }
    }
}
