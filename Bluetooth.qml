import Quickshell.Bluetooth
import Quickshell
import QtQuick

Rectangle {
    color: "transparent"

    height: 18
    width: 18

    Scope {
        id: bluetooth

        readonly property var adapter: Bluetooth.defaultAdapter
    }

    Text {
        anchors.centerIn: parent

        color: "black"

        text: bluetooth.adapter.enabled ? "󰂯" : "󰂲"
    }
}
