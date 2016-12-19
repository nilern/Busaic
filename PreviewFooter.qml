import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import FontAwesome 1.0
import Material 0.1

ActionBar {
    id: previewFooter
    backgroundColor: style.primaryColor

    RowLayout {
        id: layout
        anchors.fill: parent

        ActionButton {
            id: continueButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            font.pointSize: Constants.titleFontSize
            text: FontAwesome.arrowLeft
            onClicked: mainWindow.continueEdit()
        }

        ActionButton {
            id: discardButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            font.pointSize: Constants.titleFontSize
            text: FontAwesome.trash
            onClicked: mainWindow.discard()
        }

        ActionButton {
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            font.pointSize: Constants.titleFontSize
            text: FontAwesome.save
            onClicked: mainWindow.openColors()
        }

        ActionButton {
            id: submitButton
            Layout.fillWidth: true
            font.family: FontAwesome.fontFamily
            font.pointSize: Constants.titleFontSize
            text: FontAwesome.upload
            onClicked: mainWindow.accept()
        }
    }
}
