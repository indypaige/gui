import Quickshell.Bluetooth
import Quickshell
import QtQuick

Text {
    Scope {
        id: bluetooth

        readonly property var adapter: Bluetooth.defaultAdapter
    }

    text: bluetooth.adapter.enabled ? "󰂯" : "󰂲"
    font.family: "Iosevka"
    font.pointSize: 14
    color: "#232634"
}
