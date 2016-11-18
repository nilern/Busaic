import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("UIDMosaic")

    signal connect()
    signal selectTile()
    signal openTools()
    signal openToolSettings()
    signal openColors()
    signal openPreview()

    BSStates { }

    Loader {
        id: mainContent
        anchors.fill: parent
    }

    BSToolBox {
        id: toolbox
        visible: false
        anchors.fill: parent
    }

    BSToolSettings {
        id: toolSettings
        visible: false
        anchors.fill: parent
    }

    BSPalette {
        id: palette
        visible: false
        anchors.fill: parent
    }

    footer: ToolBar {
        RowLayout {
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
}
