import Quickshell
import QtQuick

Text {
    Scope {
        id: greeting

        SystemClock {
            id: clock
            precision: SystemClock.Seconds
        }

        readonly property var msg: Qt.formatDateTime(clock.date, "ddd, MMM dd, yyyy")
    }

    font.family: "Iosevka"
    font.pointSize: 14
    text: greeting.msg
    color: "#c6d0f5"
}
