import QtQml.StateMachine 1.0 as DSM

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
            targetState: interactionState
            signal: mainWindow.selectTile
        }
    }

    DSM.State {
        id: interactionState
        initialState: drawState
        onEntered: mainContent.source = "Draw.qml"

        DSM.State {
            id: drawState

            DSM.SignalTransition {
                targetState: toolsState
                signal: mainWindow.openTools
            }

            DSM.SignalTransition {
                targetState: toolSettingsState
                signal: mainWindow.openToolSettings
            }

            DSM.SignalTransition {
                targetState: colorsState
                signal: mainWindow.openColors
            }

            DSM.SignalTransition {
                targetState: previewState
                signal: mainWindow.openPreview
            }
        }

        DSM.State {
            id: toolsState
            onEntered: {
                toolsButton.checked = true;
                toolbox.visible = true;
            }
            onExited: {
                toolsButton.checked = false;
                toolbox.visible = false;
            }

            DSM.SignalTransition {
                targetState: drawState
                signal: mainWindow.openTools
            }

            DSM.SignalTransition {
                targetState: toolSettingsState
                signal: mainWindow.openToolSettings
            }

            DSM.SignalTransition {
                targetState: colorsState
                signal: mainWindow.openColors
            }

            DSM.SignalTransition {
                targetState: previewState
                signal: mainWindow.openPreview
            }
        }

        DSM.State {
            id: toolSettingsState
            onEntered: {
                toolSettingsButton.checked = true;
                toolSettings.visible = true;
            }
            onExited: {
                toolSettingsButton.checked = false;
                toolSettings.visible = false;
            }

            DSM.SignalTransition {
                targetState: toolsState
                signal: mainWindow.openTools
            }

            DSM.SignalTransition {
                targetState: drawState
                signal: mainWindow.openToolSettings
            }

            DSM.SignalTransition {
                targetState: colorsState
                signal: mainWindow.openColors
            }

            DSM.SignalTransition {
                targetState: previewState
                signal: mainWindow.openPreview
            }
        }

        DSM.State {
            id: colorsState
            onEntered: {
                colorsButton.checked = true;
                palette.visible = true;
            }
            onExited: {
                colorsButton.checked = false;
                palette.visible = false;
            }

            DSM.SignalTransition {
                targetState: toolsState
                signal: mainWindow.openTools
            }

            DSM.SignalTransition {
                targetState: toolSettingsState
                signal: mainWindow.openToolSettings
            }

            DSM.SignalTransition {
                targetState: drawState
                signal: mainWindow.openColors
            }

            DSM.SignalTransition {
                targetState: previewState
                signal: mainWindow.openPreview
            }
        }

        DSM.State {
            id: previewState
        }
    }
}
