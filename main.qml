import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Busaic")

    property Item activeTile
    property int activeTileIndex: -1
    property bool editing: false

    signal connect()
    signal selectTile(Item tile)
    signal openTools()
    signal openToolSettings()
    signal openColors()
    signal openPreview()

    onSelectTile: {
        activeTile = tile;
        activeTileIndex = mainContent.item.getActiveTileIndex();
    }

    function setInteractionFooter() {
        footerLoader.source = "BSDrawFooter.qml";
        footerLoader.visible = true;
        this.footer = footerLoader;
    }

    function setSelectionFooter() {
        footerLoader.source = "BSSelectionFooter.qml";
        footerLoader.visible = true;
        this.footer = footerLoader;
    }

    function removeFooter() {
        footerLoader.visible = false;
        this.footer = null;
    }

    function showFAB() {
        acceptFAB.visible = true;
    }

    function hideFAB() {
        acceptFAB.visible = false;
    }

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

    FloatingActionButton {
        id: acceptFAB
        visible: false
        anchors {
            bottom: parent.bottom
            right: parent.right
            margins: 8
        }
        font.family: FontAwesome.fontFamily
        text: FontAwesome.check
    }

    Popup {
        id: acceptPopup
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        modal: true
        closePolicy: Popup.NoAutoClose

        ColumnLayout {
            Button {
                id: submitButton
                Layout.fillWidth: true
                text: qsTr("Submit")
            }

            Button {
                id: continueButton
                Layout.fillWidth: true
                text: qsTr("Continue Editing")
            }

            Button {
                id: discardButton
                Layout.fillWidth: true
                text: qsTr("Discard")
            }
        }
    }

    Loader {
        id: footerLoader
        visible: false
    }
}
