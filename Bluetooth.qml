import Quickshell.Bluetooth
import Quickshell
import QtQuick

Text {
    Scope {
        id: bluetooth

        readonly property var adapter: Bluetooth.defaultAdapter
    }

    color: "#232634"

    text: bluetooth.adapter.enabled ? "󰂯" : "󰂲"
}
