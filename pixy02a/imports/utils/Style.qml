pragma Singleton
import QtQuick 2.2

Item {
    property bool debugMode: false

    function icon(name) {
        return name?Qt.resolvedUrl('../../assets/' + name + '.png'):''
    }
}
