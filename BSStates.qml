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
        onEntered: {
            mainContent.source = "Draw.qml";
            mainWindow.setInteractionFooter();
        }
        onExited: mainWindow.removeFooter()

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
                toolbox.visible = true;
                onEntered: mainWindow.footer.item.toggleButton("tools");
            }
            onExited: {
                toolbox.visible = false;
                onEntered: mainWindow.footer.item.toggleButton(undefined);
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
                toolSettings.visible = true;
                onEntered: mainWindow.footer.item.toggleButton("toolSettings");
            }
            onExited: {
                toolSettings.visible = false;
                onEntered: mainWindow.footer.item.toggleButton(undefined);
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
                palette.visible = true;
                onEntered: mainWindow.footer.item.toggleButton("colors");
            }
            onExited: {
                palette.visible = false;
                onEntered: mainWindow.footer.item.toggleButton(undefined);
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
    }

    DSM.State {
        id: previewState
        onEntered: mainWindow.showFAB()
        onExited: mainWindow.hideFAB()

        DSM.SignalTransition {
            targetState: acceptState
            signal: acceptFAB.clicked
        }
    }

    DSM.State {
        id: acceptState
        onEntered: acceptPopup.open()
        onExited: acceptPopup.close()

        DSM.SignalTransition {
            targetState: doneState
            signal: submitButton.clicked
        }

        DSM.SignalTransition {
            targetState: drawState
            signal: continueButton.clicked
        }

        DSM.SignalTransition {
            targetState: connectState
            signal: discardButton.clicked
        }
    }

    DSM.FinalState {
        id: doneState
    }
}
