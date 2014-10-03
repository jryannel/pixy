import QtQuick 2.0
import QtQuick.Layouts 1.0
import '.'
import utils 1.0

Item {
    id: root
    width: ListView.view.width
    height: 128
    signal clicked()
    property alias imageSource: image.source
    property alias text: label.text
    BorderImage {
        anchors.fill: parent
        source: Style.icon('listitem')
        width: 100; height: 100
        border.left: 5; border.top: 5
        border.right: 5; border.bottom: 5
    }
    
    RowLayout {
        anchors.fill: parent
        anchors.topMargin: 1
        anchors.bottomMargin: 1
        Image {
            id: image
            Layout.preferredWidth: parent.height
            Layout.preferredHeight: parent.height
            asynchronous: true
            fillMode: Image.PreserveAspectCrop
        }
        Label {
            id: label
            Layout.fillWidth: true
        }
    }
    
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
