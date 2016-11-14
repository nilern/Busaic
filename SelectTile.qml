import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Pane {
    GridLayout {
        anchors.centerIn: parent
        rows: 5
        columns: 4

        Repeater {
            model: 20

            Button {
                onClicked: mainWindow.selectTile()
            }
        }
    }
}
