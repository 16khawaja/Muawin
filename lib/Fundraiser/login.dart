import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:folk/home-muawin.dart';

/// a notification show in front of screen and shown at the top
///
class LoginFundraiser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  "Be",
                  style: TextStyle(fontSize: 36.0, color: Color(0xff52b600)),
                ),
                SizedBox(width: 20.0, height: 10.0),
                RotateAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: ["Muawin", "OPTIMISTIC", "DIFFERENT"],
                  textStyle: TextStyle(
                      fontSize: 36,
                      fontFamily: "Horizon",
                      color: Color(0xff52b600)),
                ),
              ],
            ),
            Container(
              alignment: FractionalOffset(0.5, 0.5),
              child: new Container(
                height: 250,
                width: 300,
                child: Image(
                  image: AssetImage('images/logo1.png'),
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: FlatButton.icon(
                      color: Color(0xff538b22),

                      icon: Icon(Icons.contact_mail), //`Icon` to display
                      label: Text('Donor'), //`Text` to display
                      textColor: Colors.white,
                      splashColor: Color(0xff55b600),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () {
                        //Code to execute when Floating Action Button is clicked
                        //...
                      },
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
