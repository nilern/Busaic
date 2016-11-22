import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Item {
   ColumnLayout {
       anchors.fill: parent
       Label {
           Layout.alignment: Qt.AlignHCenter
           font.pointSize: 72
           horizontalAlignment: Text.AlignHCenter
           text: qsTr("Busaic\nBus 23")
       }

       Label {
           Layout.alignment: Qt.AlignHCenter
           text: qsTr("Done for this ride.")
       }
   }
}
