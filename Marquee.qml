import Quickshell.Widgets
import Quickshell
import QtQuick

Rectangle {
    id: marquee
    clip: true

    property var message

    Text {
        id: marqueeText

        anchors.verticalCenter: parent.verticalCenter

	height: marquee.height
	text: marquee.message

        font.family: "Iosevka"
        font.pointSize: 14
        color: "#c6d0f5"

        NumberAnimation {
            id: a

            readonly property var shouldScroll: marqueeText.width > marquee.width

            alwaysRunToEnd: false
            duration: marquee.width * 35
            loops: Animation.Infinite
            to: -marqueeText.width
            running: shouldScroll
            target: marqueeText
            from: marquee.width
            property: 'x'
        }

        Component.onCompleted: {
            marqueeText.lineLaidOut.connect((_) => marqueeText.x = 0)
        }
    }
}
