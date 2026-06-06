import Quickshell.Bluetooth
import Quickshell
import QtQuick

Text {
    Scope {
        id: bluetooth

        readonly property var adapter: Bluetooth.defaultAdapter
        readonly property var online: adapter?.enabled

        readonly property var using: adapter?.devices
            .values
            .some((x) => x.connected)
    }

    text: bluetooth.online ? (bluetooth.using ? "󰂱" : "󰂯") : "󰂲"
    font.family: "Iosevka"
    font.pointSize: 14
    color: "#232634"
}
