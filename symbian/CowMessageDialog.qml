import QtQuick 1.1
import com.nokia.symbian 1.1

// Simple dialog with title, message and button

// string buttonText
// string message
// string titleText
// signal accepted
// signal rejected

QueryDialog {
    id: dialog
    property alias buttonText: dialog.acceptButtonText
    rejectButtonText: ""
    // Add newline to messages text to work around a QueryDialog bug on Symbian:
    Component.onCompleted: message = message + "\n"
}
