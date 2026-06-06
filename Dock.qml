import Quickshell.Services.UPower
import Quickshell.Networking
import Quickshell.Bluetooth
import Quickshell
import QtQuick

Rectangle {
    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    Scope {
        id: bluetooth

        readonly property var adapter: Bluetooth.defaultAdapter

        readonly property var online: adapter.enabled ? "󰂯" : "󰂲"
    }

    Scope {
        id: battery

        readonly property var device: UPower.displayDevice
        readonly property var charge:!device.isLaptopBattery ? "󰚥" :
            (device.percentage == 100) ? "" :
            (device.percentage >= 90)  ? "" :
            (device.percentage >= 60)  ? "" :
            (device.percentage >= 50)  ? "" :
            (device.percentage >= 10)  ? "" : ""
    }

    Scope {
        id: network

        readonly property var strength:
        switch (Networking.connectivity) {
        case NetworkConnectivity.Full:
            "󰢾"
            break;
        case NetworkConnectivity.Limited:
            "󰢼"
            break;
        default:
            "󰢿"
        }
    }

    anchors {
        fill: parent

        margins: 12
    }

    color: "transparent"

    Row {
        anchors.verticalCenter: parent.verticalCenter
        spacing: 12

        Rectangle {
            width: 48
            height: 48
            color: "#f2d5cf"

            radius: 10

            Text {
                text: network.strength

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#eebebe"

            radius: 10

            Text {
                text: bluetooth.online

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#f4b8e4"

            radius: 10

            Text {
                text: battery.charge

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#ca9ee6"

            radius: 10
        }
    }

    Row {
        anchors.centerIn: parent

        spacing: 12

        Rectangle {
            width: 48
            height: 48
            color: "#e78284"

            radius: 10

            Text {
                text: Qt.formatDateTime(clock.date, "ddd")

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#ea999c"

            radius: 10

            Text {
                text: Qt.formatDateTime(clock.date, "MMM")

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#ef9f76"

            radius: 10

            Text {
                text: Qt.formatDateTime(clock.date, "dd")

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#e5c890"

            radius: 10

            Text {
                text: Qt.formatDateTime(clock.date, "yy")

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }
    }

    Row {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right

        spacing: 12

        Rectangle {
            width: 48
            height: 48
            color: "#a6d189"

            radius: 10

            Text {
                text: Qt.formatDateTime(clock.date, "hh AP").split(" ")[0]

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#81c8be"

            radius: 10

            Text {
                text: Qt.formatDateTime(clock.date, "mm")

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#99d1db"

            radius: 10

            Text {
                text: Qt.formatDateTime(clock.date, "ss")

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }

        Rectangle {
            width: 48
            height: 48
            color: "#85c1dc"

            radius: 10

            Text {
                text: Qt.formatDateTime(clock.date, "AP")

                anchors.centerIn: parent
                font.family: "Iosevka"
                font.pointSize: 14

                color: "#232634"
            }
        }
    }
}
