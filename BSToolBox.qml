import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0

Rectangle {
    color: "black"

    GridLayout {
        anchors.fill: parent
        columns: 2

        BSToolBoxButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: FontAwesome.pencil
        }

        BSToolBoxButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: FontAwesome.paintBrush
        }

        BSToolBoxButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: FontAwesome.square
        }

        BSToolBoxButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: FontAwesome.circle
        }
    }
}
