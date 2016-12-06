import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0
import Material 0.1

ActionBar {
    id: interactionFooter
    backgroundColor: style.primaryColor

    RowLayout {
        id: layout
        anchors.fill: parent
        ActionButton {
            id: toolsButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            font.pointSize: Constants.titleFontSize
            text: FontAwesome.pencil
            onClicked: mainWindow.openTools()
        }

        ActionButton {
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            font.pointSize: Constants.titleFontSize
            text: FontAwesome.undo
            onClicked: mainWindow.openToolSettings()
        }

        ActionButton {
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            font.pointSize: Constants.titleFontSize
            text: FontAwesome.repeat
            onClicked: mainWindow.openColors()
        }

        ActionButton {
            id: previewButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            font.pointSize: Constants.titleFontSize
            text: FontAwesome.eye
            onClicked: mainWindow.openPreview()
        }
    }
}
