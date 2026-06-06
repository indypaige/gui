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
            width: 200
            radius: 6
        }
    }

    Row {
        anchors.centerIn: parent

        bottomPadding: 10
        topPadding: 10

        Rectangle {
            color: "#414559"
            height: 38
            width: 400
            radius: 6

            Greeting {
                anchors.centerIn: parent
            }
        }
    }
}
