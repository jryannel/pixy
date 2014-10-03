import QtQuick 2.0

Item {
    id: root

    property string search: ''

    function resolveUrl(path) {
        return Qt.resolvedUrl(path);
    }

    property ListModel model : ListModel {
        id: model
    }
    Component.onCompleted: {
        for(var i=0; i<20; i++) {
            model.append({artist: 'Coldplay', title: 'Title #'+i, album: 'Mylo Xyloto', cover: 'album.png'})
        }
    }
}
