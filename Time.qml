import Quickshell
import QtQuick

Text {
    text: Qt.formatDateTime(clock.date, "hh:mm:ss AP").split(" ")[0]

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    font.family: "Iosevka"
    font.pointSize: 14
    color: "#232634"
}
