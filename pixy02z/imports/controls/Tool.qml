import QtQuick 2.2
import QtQuick.Layouts 1.0
import utils 1.0

Item {
    id: root
    width: 48
    height: 48
    property alias source: image.source
    signal clicked()
    
    Image {
        id: image
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
