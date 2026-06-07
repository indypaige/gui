import Quickshell.Widgets
import QtQml.Models
import Quickshell
import QtQuick

Rectangle {
    id: dock

    anchors {
        fill: parent
    }

    color: "transparent"

    readonly property list<DesktopEntry> entries: DesktopEntries
        .applications
        .values
        .filter((x) => !x.noDisplay)

    DelegateModel {
        id: apps

        model: entries

        delegate: IconImage {
            id: app

            source: Quickshell.iconPath(icon)
            height: 48
            width: 48

            HoverHandler {
                id: mouse
            }

            TapHandler {
                id: tap
            }

            Component.onCompleted: {
                tap.tapped.connect(onClick)
                console.log(id)
            }

            function onClick(_, _) {
                execute()
            }

            PopupWindow {
                anchor.window: bottomBar

                anchor.margins.left: (dock.width * 1.5) - (t.width / 2)
                visible: mouse.hovered
                color: "transparent"
                width: t.width

                Text {
                    id: t

                    font.family: "Iosevka"
                    font.pointSize: 14
                    color: "#c6d0f5"
                    text: name
                }
            }
        }
    }

    ListView {
        clip: true

        anchors.verticalCenter: parent.verticalCenter

        orientation: ListView.Horizontal
        width: parent.width
        model: apps
        spacing: 10
        height: 48
    }
}
