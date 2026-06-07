import Quickshell.Services.SystemTray
import Quickshell.Widgets
import QtQml.Models
import Quickshell
import QtQuick

Rectangle {
    clip: true

    id: tray

    anchors {
        margins: 5
    }

    DelegateModel {
        id: vm

        model: SystemTray.items.values

        delegate: IconImage {
            id: this

            height: 20
            width: 20
            source: icon

            TapHandler {
                acceptedButtons: Qt.RightButton
                id: rb
            }

            QsMenuOpener {
                id: opener
            }

            function onRb(_, _) {
                display(topBar, topBar.width - tray.width, 48)
            }

            Component.onCompleted: {
                opener.menu = menu
                rb.tapped.connect(onRb)
            }
        }
    }

    ListView {
        anchors.verticalCenter: parent.verticalCenter
        leftMargin: 15

        orientation: ListView.Horizontal
        height: parent.height / 2
        width: parent.width
        spacing: 10
        model: vm
    }
}
