import QtQuick 1.1
import com.nokia.symbian 1.1

CommonDialog {
    id: dialog
    property alias title: dialog.titleText
    signal dialogClosed
    signal dialogAccepted
    signal dialogRejected

    anchors.fill: parent

    onStatusChanged: {
        if (status === DialogStatus.Closed) {
            dialogClosed()
        }
    }

    onButtonClicked: {
        if (index === 0) {
            dialogAccepted()
        } else {
            dialogRejected()
        }
    }
}
