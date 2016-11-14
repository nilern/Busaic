import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Page {
    footer: ToolBar {
        RowLayout {
            ToolButton {
                text: qsTr("Tools")
            }
            ToolButton {
                text: qsTr("Colors")
            }
        }
    }
}
