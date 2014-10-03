import QtQuick 2.2
import QtQuick.Layouts 1.0
import controls 1.0
import utils 1.0
import backend 1.0


Item {
    id: root
    width: 320
    height: 640

    MusicCore {
        id: music
        search: search.text
    }
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
        ListView {
            id: view
            anchors.fill: parent
            clip: true
            model: music.model
            delegate: ListItem {
                text: model.title + ' / ' + model.artist
                imageSource: music.resolveUrl(model.cover)
                onClicked: {
                    print('open image page')
                    var data = {
                        item: Qt.resolvedUrl('ObjectViewerPage.qml'),
                        properties: {
                            image: music.resolveUrl(model.cover),
                            title: model.title
                        }
                    }
                    stackView.push(data)
                }
            }
        }
    }

    ToolBar {
        id: toolBar
        Search {
            id: search
        }
    }

}
