import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0

Rectangle {
    color: "white"

    GridLayout {
        anchors.fill: parent
        rows: 4
        columns: 4

        BSToolBoxButton {
            Layout.fillWidth: true
            text: FontAwesome.pencil
        }

        BSToolBoxButton {
            Layout.fillWidth: true
            text: FontAwesome.paintBrush
        }

        BSToolBoxButton {
            Layout.fillWidth: true
            text: FontAwesome.square
        }

        BSToolBoxButton {
            Layout.fillWidth: true
            text: FontAwesome.circle
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            width: 72
            height: 72
            radius: width/2
            color: style.primaryColor
        }

        Slider {
            Layout.fillWidth: true
            Layout.columnSpan: 3
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rowSpan: 2
            color: style.primaryColor
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rowSpan: 2
            Layout.columnSpan: 2
            color: style.primaryColor
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rowSpan: 2
            color: style.primaryColor
        }
    }
}
