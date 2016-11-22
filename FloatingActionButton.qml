import QtQuick 2.7
import QtQuick.Controls 2.0

Button {
    id: button
    width: 48
    height: 48
    background: Rectangle {
        anchors.fill: button
        color: "grey"
        radius: width / 2
    }
}
