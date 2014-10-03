pragma Singleton
import QtQuick 2.2

Item {
    property bool debugMode: false
    
    readonly property string fontFamily: 'Open Font'
    readonly property int fontSizeS: 14
    readonly property int fontSizeM: 18
    readonly property int fontSizeL: 24
    readonly property color fontColor: '#fefefe'

    function icon(name) {
        return name?Qt.resolvedUrl('../../assets/' + name + '.png'):''
    }
}
