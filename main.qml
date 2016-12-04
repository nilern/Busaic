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

    QtObject {
        id: style
        property color primaryColor: "#3F51B5"
        property color primaryColorPale: "#C5CAE9"
        property color primaryColorDark: "#1A237E"
        property color accentColor: "#64DD17"
    }

    property Item activeTile
    property int activeTileIndex: -1
    property bool editing: false

    signal connect()
    signal selectTile(Item tile)
    signal openTools()
    signal openToolSettings()
    signal openColors()
    signal openPreview()
    signal continueEdit()
    signal accept()
    signal discard()

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

    function setPreviewFooter() {
        footerLoader.source = "PreviewFooter.qml";
        footerLoader.visible = true;
        this.footer = footerLoader;
    }

    function removeFooter() {
        footerLoader.visible = false;
        this.footer = null;
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

    Loader {
        id: footerLoader
        visible: false
    }
}
