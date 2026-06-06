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
        color: "#232634"

        NumberAnimation {
            id: a

            duration: marquee.width * 35
            loops: Animation.Infinite
            to: -marqueeText.width
            target: marqueeText
            from: marquee.width
            property: 'x'
            running: marqueeText.width > marquee.width
        }

        Component.onCompleted: {
            marqueeText.lineLaidOut.connect((_) => marqueeText.x = 0)
        }
    }
}
