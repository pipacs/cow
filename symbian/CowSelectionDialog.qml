import QtQuick 1.1
import com.nokia.symbian 1.1

SelectionDialog {
    id: dialog

    // Height can be too small on Symbian:
    Component.onCompleted: if (dialog.height < 300) dialog.height = 300
}
