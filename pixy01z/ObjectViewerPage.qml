import QtQuick 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.1
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
        centerText: 'TitleBar'
    }
    
    Marker {
        id: content        
        anchors.top: titleBar.bottom
        anchors.bottom: toolBar.top
        anchors.left: parent.left
        anchors.right: parent.right
        text: 'Content'
        
        Marker {
            id: imageTitle
            anchors.bottom: image.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 16
            height: 32
            centerText: 'Image Title'
            
        }
        Marker {
            id: image
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 16
            height: width
            centerText: 'Image'
        }
    }
    
    Marker {
        id: toolBar
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 64
        centerText: 'ToolBar'
        RowLayout {
            anchors.fill: parent
            anchors.margins: 8
            Marker {
                centerText: 'Back'
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
                onClicked: root.Stack.view.pop()
            }
        }
    }
    
}
