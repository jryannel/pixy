import QtQuick 2.2
import QtQuick.Layouts 1.0
import utils 1.0

Item {
    id: search
    anchors.centerIn: parent
    height: 32
    width: 240
    property alias text: input.text
    signal accepted()
    BorderImage {
        id: frame
        source: Style.icon('search')
        anchors.horizontalCenter: parent.horizontalCenter
        border.left: 24
        border.right: 24
    }
    TextInput {
        id: input
        anchors.fill: frame
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        
        width: frame.width
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 24
        color: '#efefef'
        clip: true
        Tracer {}
        onAccepted: {
            root.accepted()
        }
    }
}
