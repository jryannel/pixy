import QtQuick 2.2
import QtQuick.Layouts 1.0
import utils 1.0

Item {
    id: root
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    height: 64
    BorderImage {
        source: Style.icon('toolbar')
        anchors.fill: parent
        border.left: 8
        border.right: 8
    }
    Tracer {}
}
