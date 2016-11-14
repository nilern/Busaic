import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
   Button {
       anchors.centerIn: parent
       text: qsTr("Connect")
       onClicked: mainWindow.connect()
   }
}
