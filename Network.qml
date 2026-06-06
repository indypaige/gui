import Quickshell.Networking
import Quickshell
import QtQuick

Rectangle {
    color: "transparent"

    height: 18
    width: 18

    Scope {
        id: network

        readonly property var primaryDevice: devicesByConnectivity[0]

        readonly property var devicesByConnectivity: Networking
            .devices
            .values
            .slice()
            .sort((a, b) => b.connected - a.connected)

        readonly property var icon: {
            if (!primaryDevice) return "???";

            switch (primaryDevice.type) {
            case DeviceType.Wired:
                return "󰒍";
            case DeviceType.Wifi:
                switch (Networking.connectivity) {
                case NetworkConnectivity.Limited:
                    return "󰢽";
                case NetworkConnectivity.Full:
                    return "󰢾";
                default:
                    return "󰞃";
                }
            default:
                return "󰢤";
            }
        }
   }

    Text {
        anchors.centerIn: parent
        font.family: "Iosevka"
        font.pointSize: 14
        text: network.icon
        color: "#232634"
    }
}
