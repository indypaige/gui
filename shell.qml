//@ pragma UseQApplication

import Quickshell
import QtQuick

ShellRoot {
    PanelWindow {
        id: topBar

        color: "transparent"

        anchors {
            top: true
            right: true
            left: true
        }

        implicitHeight: 48

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

        implicitHeight: 64

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
