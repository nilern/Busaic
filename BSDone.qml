import QtQuick 2.7
import QtQuick.Layouts 1.1

import Material 0.1

Rectangle {
    color: style.primaryColor

   ColumnLayout {
       anchors.fill: parent
       Label {
           Layout.alignment: Qt.AlignHCenter
           horizontalAlignment: Text.AlignHCenter
           font.pointSize: 72
           color: "white"
           text: qsTr("Busaic\nBus 23")
       }

       Label {
           Layout.alignment: Qt.AlignHCenter
           color: "white"
           text: qsTr("Done for this ride.")
       }
   }
}
