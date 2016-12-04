import QtQuick 2.7
import QtQuick.Controls 2.0

import FontAwesome 1.0

Button {
    id: button

    contentItem: Text {
        anchors.centerIn: button
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: FontAwesome.fontFamily
        font.pointSize: 42
        color: "#3F51B5"
        text: button.text
    }

    background: Rectangle {
        color: "white"
    }
}
