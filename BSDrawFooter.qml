import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0

ToolBar {
    id: interactionFooter

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
        BSToolButton {
            id: toolsButton
            Layout.fillWidth: true
            text: FontAwesome.archive
            onClicked: mainWindow.openTools()
        }

        BSToolButton {
            id: toolSettingsButton
            Layout.fillWidth: true
            text: FontAwesome.pencil
            onClicked: mainWindow.openToolSettings()
        }

        BSToolButton {
            id: colorsButton
            Layout.fillWidth: true
            text: FontAwesome.eraser
            onClicked: mainWindow.openColors()
        }

        BSToolButton {
            id: previewButton
            Layout.fillWidth: true
            text: FontAwesome.eye
            onClicked: mainWindow.openPreview()
        }
    }
}
