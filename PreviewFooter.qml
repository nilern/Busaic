import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0

ToolBar {
    id: previewFooter

    RowLayout {
        id: layout
        anchors.fill: parent

        BSToolButton {
            id: continueButton
            Layout.fillWidth: true
            text: FontAwesome.arrowLeft
            onClicked: mainWindow.continueEdit()
        }

        BSToolButton {
            id: discardButton
            Layout.fillWidth: true
            text: FontAwesome.trash
            onClicked: mainWindow.discard()
        }

        BSToolButton {
            id: submitButton
            Layout.fillWidth: true
            text: FontAwesome.check
            onClicked: mainWindow.accept()
        }
    }

    background: Rectangle {
        color: style.primaryColor
    }
}
