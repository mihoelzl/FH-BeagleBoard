import Qt 4.7

Item {
    property string text
    signal clicked

    width: 50
    id: container
    Image {
        id: normal
        source: "images/mediabutton.png"
        width: container.width
    }
    Image {
        id: pressed
        source: "images/mediabutton-pressed.png"
        opacity: 0
        width: container.width
    }
    MouseArea {
        id: clickRegion
        anchors.fill: normal
        onClicked: { container.clicked(); }
    }
    Text {
        font.bold: true
        color: "white"
        anchors.centerIn: normal
        text: container.text
    }
    //width: normal.width

    states: State {
        name: "Pressed"
        when: clickRegion.pressed == true
        PropertyChanges { target: pressed; opacity: 1 }
    }
}
