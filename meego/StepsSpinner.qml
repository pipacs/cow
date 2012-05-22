import QtQuick 1.1
import com.nokia.meego 1.0

// Simple wrapper for BusyIndicator
// Busy indicator with text
Item {
    id: spinner
    property alias running: busyIndicator.running
    property bool darken: true
    property alias text: label.text
    visible: running

    Rectangle {
        anchors.fill: parent
        opacity: darken? 0.7: 0
        color: "black"
    }

    MouseArea {
        anchors.fill: parent
    }

    BusyIndicator {
        id: busyIndicator
        anchors.centerIn: spinner
        platformStyle: BusyIndicatorStyle {size: "large"}
    }

    Label {
        id: label
        anchors.horizontalCenter: spinner.horizontalCenter
        anchors.top: busyIndicator.bottom
        anchors.margins: 31
        color: "white"
        horizontalAlignment: Text.AlignHCenter
    }
}
