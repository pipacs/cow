import QtQuick 1.0
import com.nokia.meego 1.0

// A Button that can be highlighted without being selected
Button {
    property bool platformInverted: false
    property bool highlighted: false
    platformStyle: ButtonStyle {background: highlighted? "image://theme/meegotouch-button-background-selected": "image://theme/meegotouch-button-inverted-background"}
}
