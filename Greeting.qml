import Quickshell
import QtQuick

Rectangle {
    color: "transparent"

    height: 18
    width: 160

    Scope {
        id: greeting

        SystemClock {
            id: clock
            precision: SystemClock.Seconds
        }

        readonly property var msg: Qt.formatDateTime(clock.date, "ddd, MMM dd, yyyy")
    }

    Text {
        anchors.centerIn: parent
        font.family: "Iosevka"
        font.pointSize: 14
        text: greeting.msg
        color: "#232634"
    }
}
