import QtQuick 2.2
import QtQuick.Layouts 1.0
import utils 1.0

Marker {
    id: root
    width: 320
    height: 640
    
    Marker {
        id: titleBar
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 32
        text: 'TitleBar'
    }
    
    Marker {
        id: content        
        anchors.top: titleBar.bottom
        anchors.bottom: toolBar.top
        anchors.left: parent.left
        anchors.right: parent.right
        text: 'Content'
        ListView {
            id: view
            anchors.fill: parent
            clip: true
            model: 12
            delegate: Marker {
                centerText: 'Item#' + index
                width: ListView.view.width
                height: 64
                onClicked: {
                    print('open image page')
                    stackView.push(Qt.resolvedUrl('ObjectViewerPage.qml'))
                }
            }
        }
    }
    
    Marker {
        id: toolBar
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 64
        text: 'ToolBar'
        Marker {
            anchors.centerIn: parent
            height: 32
            width: 240
            centerText: 'Search'
        }
    }
    
}
