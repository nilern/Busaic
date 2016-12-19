import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0
import Material 0.1

Rectangle {
    color: "white"

    MouseArea {
        anchors.fill: parent
    }

    GridLayout {
        anchors.fill: parent
        anchors.margins: 8 * dp
        rows: 4
        columns: 4

        BSToolBoxButton {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            text: FontAwesome.pencil
        }

        BSToolBoxButton {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            text: FontAwesome.paintBrush
        }

        BSToolBoxButton {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            text: FontAwesome.square
        }

        BSToolBoxButton {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            text: FontAwesome.circle
        }

        Item {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            width: 56*dp
            height: width

            Rectangle {
                anchors.centerIn: parent
                width: mainWindow.pencilSize
                height: width
                radius: width/2
                color: Qt.hsva(mainWindow.hue,  mainWindow.saturation,
                               mainWindow.colorValue, mainWindow.colorAlpha);
            }
        }

        Label {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("size:")
        }

        Slider {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.columnSpan: 2
            to: 56 * dp
            onVisualPositionChanged: mainWindow.pencilSize = to * visualPosition
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            width: 56*dp
            Layout.rowSpan: 3
            color: Qt.hsva(mainWindow.hue,  mainWindow.saturation, mainWindow.colorValue,
                           mainWindow.colorAlpha)
        }

        Slider {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.rowSpan: 2
            orientation: Qt.Vertical
            onVisualPositionChanged: mainWindow.hue = to * visualPosition
        }

        Slider {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.rowSpan: 2
            orientation: Qt.Vertical
            onVisualPositionChanged: mainWindow.saturation = to * visualPosition
        }

        Slider {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.rowSpan: 2
            orientation: Qt.Vertical
            value: 1.0
            onVisualPositionChanged: mainWindow.colorValue = to * visualPosition
        }

        Label {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("hue")
        }

        Label {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("saturation")
        }

        Label {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            text: qsTr("value")
        }
    }
}
