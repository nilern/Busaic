import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

ToolBar {
    RowLayout {
        anchors.fill: parent
        Label {
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
            text: qsTr("Select a tile.")
            color: "white"
        }

        BSToolButton {
            text: qsTr("Random")
        }
    }

    background: Rectangle {
        color: style.primaryColor
    }
}
