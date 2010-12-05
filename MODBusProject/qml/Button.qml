import Qt 4.7

Item {
    id: container
    property string text: ""
    property string iconSource: ""
    signal click

    BorderImage {
        id: buttonImage
        source: container.iconSource
        opacity: 1
    }

    Text {
        id : btnText
        anchors.centerIn: buttonImage
        text: container.text
        color: "white"
    }

    MouseArea {
        id: mouseRegion
        anchors.fill: buttonImage
        onClicked: { container.click(); }
    }

    states: State {
        name: "Pressed"
        when: mouseRegion.pressed = true
        PropertyChanges {
            target: container; opacity: 0.6
        }

    }

}
