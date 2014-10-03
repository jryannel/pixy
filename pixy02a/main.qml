import QtQuick 2.2
import QtQuick.Controls 1.1
import utils 1.0

Marker {
    id: listPage
    width: 320
    height: 640
    StackView  {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl('ObjectListPage.qml')
    }
}
