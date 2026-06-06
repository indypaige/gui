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

        anchors.rightMargin: 10

        message: ""
        id: body

        color: "transparent"

        height: 24
        width: notifications.width - 20
    }

    TapHandler {
        id: tap
    }

    function clear() {
        body.message = ""
    }

    Component.onCompleted: {
        server.notification.connect(rx)
        tap.tapped.connect(clear)
    }

    function rx(n) {
        body.message = n.body
        n.closed.connect(clear)
    }
}
