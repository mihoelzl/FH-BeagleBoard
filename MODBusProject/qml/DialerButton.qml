import Qt 4.7

BorderImage {
     id: dialerButton

     property alias operation: buttonText.text
     property string color: ""

     signal click

     source: "images/button_grey.png"; clip: true
     border { left: 10; top: 10; right: 10; bottom: 10 }

     Rectangle {
         id: shade
         anchors.fill: dialerButton; radius: 10; color: "black"; opacity: 0
     }

     Text {
         id: buttonText
         anchors.centerIn: parent; anchors.verticalCenterOffset: -1
         font.pixelSize: parent.width > parent.height ? parent.height * .5 : parent.width * .5
         style: Text.Sunken; color: "white"; styleColor: "black"; smooth: true
     }

     MouseArea {
         id: mouseArea
         anchors.fill: parent
         onClicked: {
             //doOp(operation)
             //DialerButton.click()
             dialerButton.click();
         }
     }

     states: State {
         name: "pressed"; when: mouseArea.pressed == true
         PropertyChanges { target: shade; opacity: .4 }
     }
 }
