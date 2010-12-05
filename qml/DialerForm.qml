import Qt 4.7

Rectangle {
    id: dialerForm


    signal backtomenu
    signal dialing


     width: 180; height: 350
     color: "#282828"

//     width: parent.width; height: parent.height; anchors.centerIn: parent

//     anchors { fill: parent; topMargin: 6; bottomMargin: 6; leftMargin: 6; rightMargin: 6 }


//     DialerButton {
//         x: 20
//         y: 220
//         width: 60;
//         height: 60;
//         operation: "7";
//         color: 'blue' }

//     MouseArea {
//         id: clickRegion
//         anchors.fill: normal
//         onClicked: { dialerForm.clicked(); }
//     }

     Column {
          id: box; spacing: 8

          anchors { fill: parent; topMargin: 6; bottomMargin: 6; leftMargin: 6; rightMargin: 6 }

          Display {
               id: display
               width: dialerForm.width-10
               height: 40
           }


          Grid {
               id: grid; rows: 5; columns: 3; spacing: (dialerForm.width-150)/3

               DialerButton { width: 50; height: 50; operation: "1"; color: 'blue'
                   onClick: {
                       console.log("1");
                       display.text = display.text+"1"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "2"; color: 'blue'
                   onClick: {
                       console.log("2");
                       display.text = display.text+"2"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "3"; color: 'blue'
                   onClick: {
                       console.log("3");
                       display.text = display.text+"3"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "4"; color: 'blue'
                   onClick: {
                       console.log("4");
                       display.text = display.text+"4"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "5"; color: 'blue'
                   onClick: {
                       console.log("5");
                       display.text = display.text+"5"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "6"; color: 'blue'
                   onClick: {
                       console.log("6");
                       display.text = display.text+"6"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "7"; color: 'blue'
                   onClick: {
                       console.log("7");
                       display.text = display.text+"7"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "8"; color: 'blue'
                   onClick: {
                       console.log("8");
                       display.text = display.text+"8"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "9"; color: 'blue'
                   onClick: {
                       console.log("9");display.text =
                       display.text = display.text+"9"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "*"; color: 'blue'
                   onClick: {
                       console.log("*");
                       display.text = display.text+"*"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "0"; color: 'blue'
                   onClick: {
                       console.log("0");
                       display.text = display.text+"0"
                   }
               }
               DialerButton { width: 50; height: 50; operation: "#"; color: 'blue'
                   onClick: {
                       console.log("#");
                       display.text = display.text+"#"
                   }
               }
           }

          Grid {
                id: grid2; rows: 2; columns: 2; spacing: (dialerForm.width-150)/2
                DialerButton { width: 75; height: 50; operation: "call"; color: 'blue'
                    onClick: {
                        //TODO: make call
                        console.log("call it:"+display.text);
                        OfonoContext.outgoingCall(display.text);
                        dialerForm.dialing();

                    }
                }
                DialerButton { width: 75; height: 50; operation: "back"; color: 'blue'
                    onClick: {
                        dialerForm.backtomenu();
                        console.log("back");
                        display.text = "";
                    }
                }
         }

    }

}
