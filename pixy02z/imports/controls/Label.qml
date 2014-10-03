import QtQuick 2.0
import utils 1.0

Item {
    id: root
    property alias text: label.text
    property alias horizontalAlignment: label.horizontalAlignment
    height: 32
    Text {
        id: label
        anchors.fill: parent
        anchors.margins: 4
        font.family: Style.fontFamily
        font.pixelSize: Style.fontSizeM
        color: Style.fontColor
        Tracer { color: 'orange' }
    }
    Tracer {}
}
