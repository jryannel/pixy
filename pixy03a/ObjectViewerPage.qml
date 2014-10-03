import QtQuick 2.2
import QtQuick.Layouts 1.0
import controls 1.0
import utils 1.0

Item {
    id: root
    width: 320
    height: 640
    property url image
    property string title
    
    TitleBar {
        id: titleBar
        Label {
            anchors.centerIn: parent
            width: parent.width
            text: 'Pixy'
            horizontalAlignment: Text.AlignHCenter
        }
    }
    
    Item {
        id: content        
        anchors.top: titleBar.bottom
        anchors.bottom: toolBar.top
        anchors.left: parent.left
        anchors.right: parent.right
        
        Label {
            id: imageTitle
            anchors.bottom: image.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 16
            height: 32
            text: root.title
            horizontalAlignment: Text.AlignHCenter
            
        }
        Image {
            id: image
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 16
            height: root.height*.5
            source: root.image
            fillMode: Image.PreserveAspectFit
        }
    }
    
    ToolBar {
        id: toolBar
        RowLayout {
            anchors.fill: parent
            anchors.margins: 8
            Tool {
                id: tool
                source: Style.icon('back')
                onClicked: stackView.pop()
            }
        }
    }
    
}
