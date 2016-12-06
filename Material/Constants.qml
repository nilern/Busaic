pragma Singleton
import QtQuick 2.0

QtObject {
    readonly property string sansFontFamily: "Roboto"

    readonly property real bodyFontSize: 14
    readonly property real titleFontSize: 20

    readonly property string buttonRadius: 3*dp

    readonly property color displayTextColor: "#8a000000"
    readonly property color bodyTextColor: "#de000000"
}
