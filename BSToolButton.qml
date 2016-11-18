import QtQuick 2.0
import QtQuick.Controls 2.0

import FontAwesome 1.0

ToolButton {
    id: button

    contentItem: Text {
        anchors.centerIn: button
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: FontAwesome.fontFamily
        text: button.text
    }
}
