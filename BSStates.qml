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
        onEntered: {
            mainContent.source = "BSTiles.qml"
            mainWindow.setSelectionFooter();
        }

        DSM.SignalTransition {
            targetState: interactionState
            signal: mainWindow.selectTile
        }
    }

    DSM.State {
        id: interactionState
        initialState: drawState
        onEntered: {
            mainWindow.editing = true;
            mainWindow.setBusStopHeader();
            mainWindow.setInteractionFooter();
        }
        onExited: {
            mainWindow.editing = false;
            mainWindow.removeHeader();
            mainWindow.removeFooter();
        }

        DSM.State {
            id: drawState

            DSM.SignalTransition {
                targetState: toolsState
                signal: mainWindow.openTools
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
                targetState: previewState
                signal: mainWindow.openPreview
            }
        }
    }

    DSM.State {
        id: previewState
        onEntered: {
            mainWindow.setBusStopHeader();
            mainWindow.setPreviewFooter();
        }
        onExited: {
            mainWindow.removeHeader();
            mainWindow.removeFooter();
        }

        DSM.SignalTransition {
            targetState: drawState
            signal: mainWindow.continueEdit
        }

        DSM.SignalTransition {
            targetState: doneState
            signal: mainWindow.accept
        }

        DSM.SignalTransition {
            targetState: connectState
            signal: mainWindow.discard
        }
    }

    DSM.FinalState {
        id: doneState
        onEntered: mainContent.source = "BSDone.qml"
    }
}
