import QtQuick 2.0
import QtQuick.Controls 2.0

import "."

ToolButton {
    id: button
    width: Math.max(88 * dp, contentItem.paintedWidth + 32 * dp)
    height: parent.height

    property alias textColor: content.color
    property alias rippleColor: ripple.color

    contentItem: Text {
        id: content
        anchors.centerIn: button
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: Constants.sansFontFamily
        font.pointSize: Constants.bodyFontSize
        font.bold: Font.DemiBold
        font.capitalization: Font.AllUppercase
        color: "white"
        text: button.text
    }

    background: Item {
        anchors.fill: button

        PaperRipple {
            id: ripple
            radius: 3 * dp
            mouseArea: button
        }
    }
}
