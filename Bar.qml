import Quickshell
import QtQuick

Rectangle {
    id: bar

    anchors.fill: parent

    color: "#303446"

    Row {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left

        bottomPadding: 10
        leftPadding: 5
        topPadding: 10

        Notifications {
            color: "#414559"
            height: 38
            width: 220
            radius: 6
        }
    }

    Rectangle {
        anchors.centerIn: parent

        height: 38
        width: 400
        radius: 6

        color: "#414559"

        Row {
            anchors.verticalCenter: parent.verticalCenter
            width: (parent.width - greeting.width) / 2
            height: parent.height

            layoutDirection: Qt.RightToLeft

            rightPadding: width / 5

            spacing: 10

            Bluetooth {
                anchors.verticalCenter: parent.verticalCenter
            }

            Network {
                anchors.verticalCenter: parent.verticalCenter
            }

            Battery {
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            id: greeting

            anchors.centerIn: parent
            width: parent.width / 2.5
            height: parent.height
            color: "transparent"

            Greeting {
                anchors.centerIn: parent
                width: parent.width
            }
        }

        Rectangle {
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right

            width: (parent.width - greeting.width) / 2
            height: parent.height

            color: "transparent"

            Time {
                anchors.centerIn: parent
            }
        }
    }

    Tray {
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right

        color: "#414559"
        height: 38
        width: 220
        radius: 6
    }
}
