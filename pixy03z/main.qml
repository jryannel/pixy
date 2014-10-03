import QtQuick 2.2
import QtQuick.Controls 1.1
import utils 1.0

Item {
    id: listPage
    width: 420
    height: 640
    Image {
        anchors.fill: parent
        source: Style.icon('background')
    }
    StackView  {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl('ObjectListPage.qml')
    }
}
