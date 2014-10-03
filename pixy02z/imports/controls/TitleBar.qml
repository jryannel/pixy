import QtQuick 2.2
import QtQuick.Layouts 1.0
import utils 1.0

Item {
    id: root
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 32
    BorderImage {
        anchors.fill: parent
        source: Style.icon('titlebar')
        border.left: 8
        border.right: 8
    }
}
