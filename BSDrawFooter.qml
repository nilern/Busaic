import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0
import Material 0.1

ActionBar {
    id: interactionFooter
    backgroundColor: style.primaryColor

    function toggleButton(label) {
        var button;
        switch (label) {
        case "tools":
            button = toolsButton;
            break;
        case "toolSettings":
            button = toolSettingsButton
            break;
        case "colors":
            button = colorsButton;
            break;
        }
        for (var i = 0; i < layout.children.length; i++) {
            var child = layout.children[i];
            child.checked = child === button;
        }
    }

    RowLayout {
        id: layout
        anchors.fill: parent
        ActionButton {
            id: toolsButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            text: FontAwesome.pencil
            onClicked: mainWindow.openTools()
        }

        ActionButton {
            id: toolSettingsButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            text: FontAwesome.undo
            onClicked: mainWindow.openToolSettings()
        }

        ActionButton {
            id: colorsButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            text: FontAwesome.repeat
            onClicked: mainWindow.openColors()
        }

        ActionButton {
            id: previewButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            text: FontAwesome.eye
            onClicked: mainWindow.openPreview()
        }
    }
}
