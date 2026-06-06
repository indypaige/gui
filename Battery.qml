import Quickshell.Services.UPower
import Quickshell
import QtQuick

Rectangle {
    color: "transparent"

    width: 18
    height: 18

    Scope {
        id: battery

        readonly property var device: UPower.displayDevice

        readonly property var charge:
        (device.percentage == 100) ? ""
            : (device.percentage >= 080) ? ""
            : (device.percentage >= 060) ? ""
            : (device.percentage >= 010) ? "" : ""

        readonly property var status:
        (device.isLaptopBattery) ? charge : "󰚥"
    }

    Text {
        anchors.centerIn: parent
        font.family: "Iosevka"
        text: battery.status
        font.pointSize: 14
        color: "#232634"
    }
}
