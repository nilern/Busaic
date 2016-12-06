import QtQuick 2.0
import QtQuick.Controls 2.0

ToolBar {
    id: bar
    height: 56 * dp

    property bool raised: false
    property alias backgroundColor: background.color

    background: Rectangle {
        id: background
        anchors.fill: bar
    }

    PaperShadow {
        source: background
        depth: bar.raised ? 2 : 1
    }
}
