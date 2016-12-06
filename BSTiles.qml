import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Item {
    id: tilesItem

    function getActiveTileIndex() {
        for (var i = 0; i < tiles.children.length; i++) {
            if (tiles.children[i] === mainWindow.activeTile) {
                return i;
            }
        }
        return -1;
    }

    property real tileWidth: mainWindow.editing ? mainWindow.width : mainWindow.width / tiles.columns
    x: mainWindow.editing ? -(mainWindow.activeTileIndex % tiles.columns)*tileWidth : 0
    y: mainWindow.editing ? -Math.floor(mainWindow.activeTileIndex / tiles.columns)*tileWidth : 0
    width: tiles.columns*tileWidth
    height: tiles.rows*tileWidth

    GridLayout {
        id: tiles
        anchors.fill: parent
        rows: 12
        columns: 9
        columnSpacing: 0
        rowSpacing: 0

        Repeater {
            model: parent.rows * parent.columns

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 1
                border.color: "black"

                property point oldPos
                property point oldMid

                Canvas {
                    id: canvas
                    anchors.fill: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: if (!mainWindow.editing) {
                        var ctx = canvas.getContext("2d");
                        ctx.lineJoin = "round";
                        ctx.lineCap = "round";
                        mainWindow.selectTile(parent);
                    }
                    onPressed: if (mainWindow.editing) {
                        parent.oldMid = parent.oldPos = Qt.point(mouse.x, mouse.y);
                    }

                    onPositionChanged: if (mainWindow.editing && parent === mainWindow.activeTile) {
                        var ctx = canvas.getContext("2d");
                        ctx.lineWidth = mainWindow.pencilSize;
                        ctx.strokeStyle = Qt.hsva(mainWindow.hue,  mainWindow.saturation,
                                                  mainWindow.colorValue, mainWindow.colorAlpha);

                        var mid = Qt.point((parent.oldPos.x + mouse.x) / 2,
                                           (parent.oldPos.y + mouse.y) / 2);
                        ctx.beginPath();
                        ctx.moveTo(mid.x, mid.y);
                        ctx.quadraticCurveTo(parent.oldPos.x, parent.oldPos.y,
                                             parent.oldMid.x, parent.oldMid.y);
                        parent.oldMid = mid;
                        parent.oldPos = Qt.point(mouse.x, mouse.y);

                        ctx.stroke();
                        canvas.requestPaint();
                    }
                }
            }
        }
    }

    Behavior on x {
       NumberAnimation { duration: 300 }
    }

    Behavior on y {
       NumberAnimation { duration: 300 }
    }

    Behavior on width {
       NumberAnimation { duration: 300 }
    }

    Behavior on height {
       NumberAnimation { duration: 300 }
    }
}
