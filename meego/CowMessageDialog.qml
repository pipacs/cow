import QtQuick 1.1
import com.nokia.meego 1.0

// Simple dialog with title, message and button

// buttonText
// message
// titleText
// signal accepted
// signal rejected

QueryDialog {
    id: dialog
    property alias buttonText: dialog.acceptButtonText
    rejectButtonText: ""
}
