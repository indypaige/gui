import Quickshell
import QtQuick

ShellRoot {
    PanelWindow {
        color: "transparent"

        anchors {
            top: true
            right: true
            left: true
        }

        height: 48

        margins.bottom: 5

        Bar { }
    }

    PanelWindow {
        color: "transparent"

        anchors {
            bottom: true
            right: true
            left: true
        }

        height: 64

        margins.bottom: 5

        Rectangle {
            anchors.centerIn: parent

            height: parent.height
            width:  850

            radius: 10

            color: "#303446"

            Dock { }
        }
    }
}
