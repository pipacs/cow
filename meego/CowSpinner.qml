import QtQuick 1.1
import com.nokia.meego 1.0

// Simple wrapper for BusyIndicator
BusyIndicator {
    visible: running
    platformStyle: BusyIndicatorStyle {size: "large"}
}
