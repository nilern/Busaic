import QtQuick 2.7

Item {
    Canvas {
        id: canvas
        width: 0.9*parent.width
        height: 0.9*parent.height
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onPositionChanged: {
                var ctx = canvas.getContext("2d");
                ctx.fillStyle = Qt.rgba(0, 0, 127, 1);
                ctx.fillRect(mouse.x - 2, mouse.y - 2, 4, 4);
                canvas.requestPaint();
            }
        }
    }

    Rectangle {
        anchors {
            bottom: canvas.top
            left: parent.left
            right: parent.right
        }
        height: 2
        color: "black"
    }

    Rectangle {
        anchors {
            top: canvas.bottom
            left: parent.left
            right: parent.right
        }
        height: 2
        color: "black"
    }

    Rectangle {
        anchors {
            top: parent.top
            right: canvas.left
            bottom: parent.bottom
        }
        width: 2
        color: "black"
    }

    Rectangle {
        anchors {
            top: parent.top
            left: canvas.right
            bottom: parent.bottom
        }
        width: 2
        color: "black"
    }
}
