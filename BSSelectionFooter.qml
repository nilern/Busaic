import QtQuick 2.7
import QtQuick.Layouts 1.1

import Material 0.1

ActionBar {
    backgroundColor: style.primaryColor

    RowLayout {
        anchors.fill: parent
        Label {
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: Constants.titleFontSize
            color: "white"
            text: qsTr("Select a tile.")
        }

        ActionButton {
            text: qsTr("Random")
            onClicked: {
                var tiles = mainContent.item.children[0]; // HACK
                mainWindow.selectTile(
                    tiles.children[Math.floor(
                                       tiles.children.length * Math.random())]);
            }
        }
    }
}
