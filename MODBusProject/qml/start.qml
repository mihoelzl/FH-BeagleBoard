import Qt 4.7

Rectangle  {
    id: menu

    opacity: 1

    width: 240
    height: 360
    color: "#282828"

    Connections{
        //connection for incoming call
        target: OfonoContext
        onIncomingCall: {
            console.log("QML: incomingCall from "+innumber);
            incText.text ="Caller: "+innumber
            menu.state = 'incomingCallNotificationScreen'
        }
    }

    Connections{
        //connection for switching to call screen after the dialing screen (call in progress)
        target: OfonoContext
        onCallAnswered: {
            console.log("QML: call answered");
            menu.state = 'callScreen'
        }
    }

    Connections{
        // call denied
        target: OfonoContext
        onCallDenied: {
            console.log("QML: call denied");
            menu.state = 'menuScreen'
        }
    }

    DialerForm{
        //dialer form where you can dial a number
        id: dialerForm
        x: 500
        y: 50
        onBacktomenu: {
            menu.state = 'menuScreen'
        }
        onDialing: {
            menu.state = 'dialScreen'
            console.log("QML: dialing...");
        }
    }

    Item{
        // screen shown during call in progress
        id: calling

        x: 500
        y: 50

        Text {
            x: 20
            y: 50
            id: callText

            text: "call in progress"
        }
        DialerButton {
            x: 20
            y: 35
            width: 140; height: 50; operation: "hang up"; color: 'blue'
            onClick: {
                OfonoContext.HangUpAll()
            }
        }
    }

    Item{
        // dialing screen shown after pushing call button on dialer form
        id: dialing

        x: 500
        y: 50
        Text {
            x: 20
            y: 5
            id: dialText
            text: "dialing..."
            color: "white"
        }
        DialerButton { x: 20
            y: 35
            width: 80; height: 50; operation: "stop"; color: 'blue'
            onClick: {
                OfonoContext.HangUpAll()
                //menu.state = 'menuScreen'
            }
        }
    }

    Item{
        // incoming call notification
        id: incomingCallNotification

        x: 500
        y: 50
        Text {
            id: incText
            color: "white";
            x: 80
            y: 10
        }
        DialerButton {
            x: 25
            y: 35
            width: 180; height: 50; operation: "Answer Call"; color: 'blue'
            onClick: {
                OfonoContext.answerCall()
            }
        }
        DialerButton {
            x: 25
            y: 95
            width: 180; height: 50; operation: "Hangup Call"; color: 'blue'
            onClick: {
                OfonoContext.HangUpAll()
            }
        }
    }


    Item{
        id: menuStuff

        MediaButton{
            x: 20
            y: 5
            text: "Home"
            width: 60

        }
        MediaButton{
            x: 80
            y: 5
            text: "On"
            width: 60
            onClicked: {
                console.log("QML: on button clicked");
                OfonoContext.SetPowerOn()
            }
        }
        MediaButton{
            x: 140
            y: 5
            text: "Off"
            width: 60
            onClicked: {
               console.log("QML: off button clicked");
                OfonoContext.SetPowerOff()
            }
        }
        Button {
            x: 20
            y: 30
            //text: "Button 1"
            iconSource: "images/Phone_58.png"
            onClick: {
                console.log("QML: phone button clicked");
                //textinput.text = "pressed";
                menu.state = 'phoneScreen'
            }
        }
        Button {
            x: 80
            y: 30
            //text: "Button 1"
            iconSource: "images/Clock_58.png"
            onClick: {
                console.log("Button 1 clicked");
            }
        }
        Button {
            x: 140
            y: 30
            //text: "Button 1"
            iconSource: "images/Browser_58.png"
            onClick: {
                console.log("Button 1 clicked");
            }
        }

        Button {
            x: 20
            y: 90
            iconSource: "images/Weather_58.png"
            onClick: {
                console.log("Button 1 clicked");
            }
        }
        Button {
            x: 80
            y: 90
            iconSource: "images/Notes_58.png"
            onClick: {
                console.log("Button 1 clicked");
            }
        }
        Button {
            x: 140
            y: 90
            iconSource: "images/Calendar_58.png"
            onClick: {
                console.log("Button 1 clicked");
            }
        }
        Button {
            x: 20
            y: 150
            iconSource: "images/Settings_58.png"
            onClick: {
                console.log("Button 1 clicked");
            }
        }
        Button {
            x: 80
            y: 150
            iconSource: "images/Chat_58.png"
            onClick: {
                console.log("Button 1 clicked");
            }
        }
        Button {
            x: 140
            y: 150
            iconSource: "images/MPowerOn()aps_58.png"
            onClick: {
                console.log("Button 1 clicked");
            }
        }
    }

    states: [
             State {
                 name: "phoneScreen"
                 PropertyChanges { target: dialerForm; x: 5; y: 5;}
                 PropertyChanges { target: menuStuff; x: 500; y: 5;}
             },
             State {
                 name: "menuScreen"
                 PropertyChanges { target: dialerForm; x: 500; y: 5;}
                 PropertyChanges { target: menuStuff; x: 5; y: 5;}
                 PropertyChanges { target: dialing; x: 500; y: 50;}
             },
             State {
                 name: "dialScreen"
                 PropertyChanges { target: dialerForm; x: 500; y: 5;}
                 PropertyChanges { target: menuStuff; x: 500; y: 5;}
                 PropertyChanges { target: dialing; x: 50; y: 50;}
             },
            State {
                name: "callScreen"
                PropertyChanges { target: calling; x: 50; y: 50;}
                PropertyChanges { target: dialing; x: 500; y: 5;}
                PropertyChanges { target: menuStuff; x: 500; y: 5;}
            },
            State {
                name: "incomingCallNotificationScreen"
                PropertyChanges { target: incomingCallNotification; x: 0; y: 0;}
                PropertyChanges { target: dialing; x: 500; y: 5;}
                PropertyChanges { target: menuStuff; x: 500; y: 5;}
                PropertyChanges { target: calling; x: 500; y: 5;}
            }
         ]
    transitions: [
             Transition {
                 NumberAnimation { properties: "x,y"; duration: 300 }
             }
         ]
}
