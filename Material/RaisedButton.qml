import QtQuick 2.0
import QtQuick.Controls 2.0

import "."

Button {
    id: button
    width: Math.max(88 * dp, contentItem.paintedWidth + 32 * dp)
    height: 36 * dp

    property color color: "white"
    property alias textColor: label.color
    property alias rippleColor: ripple.color

    background: Item {
        anchors.fill: button

        Rectangle {
            id: bgRect
            anchors.fill: parent
            radius: Constants.buttonRadius
            color: button.enabled ? button.color : "#eaeaea"
        }

        PaperShadow {
            id: shadow
            source: bgRect
            depth: button.enabled ? (button.pressed ? 3 : 1) : 0
        }

        PaperRipple {
            id: ripple
            radius: 3 * dp
            mouseArea: button
        }
    }

    contentItem: Text {
        id: label
        anchors.centerIn: button
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: Constants.sansFontFamily
        font.pointSize: Constants.bodyFontSize
        font.bold: Font.DemiBold
        font.capitalization: Font.AllUppercase
        color: button.enabled ? Constants.bodyTextColor : Constants.displayTextColor
        opacity: button.enabled ? 1 : 0.62
        text: button.text

        Behavior on opacity {
            NumberAnimation {
                duration: 200
                easing.type: Easing.Bezier; easing.bezierCurve: [0.4, 0, 0.2, 1, 1, 1]
            }
        }
    }
}
