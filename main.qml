import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQml.StateMachine 1.0 as DSM

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("UIDMosaic")

    signal connect()
    signal selectTile()

    Loader {
        id: mainContent
        anchors.fill: parent
    }

    DSM.StateMachine {
        initialState: connectState
        running: true

        DSM.State {
            id: connectState
            onEntered: mainContent.source = "Connect.qml"
            DSM.SignalTransition {
                targetState: tileSelState
                signal: mainWindow.connect
            }
        }

        DSM.State {
            id: tileSelState
            onEntered: mainContent.source = "SelectTile.qml"
            DSM.SignalTransition {
                targetState: drawState
                signal: mainWindow.selectTile
            }
        }

        DSM.State {
            id: drawState
            onEntered: mainContent.source = "Draw.qml"
        }
    }
}
