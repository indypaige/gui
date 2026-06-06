import Quickshell.Services.Notifications
import Quickshell
import QtQuick

Rectangle {
    id: notifications

    NotificationServer {
        id: server
    }

    Marquee {
        anchors.centerIn: parent

        message: ""
        id: body

        color: "transparent"

        height: 24
        width: notifications.width
    }

    Component.onCompleted: {
        server.notification.connect(rx)
    }

    function rx(n) {
        body.message = n.body
        n.closed.connect((_) => body.message = "")
    }
}
