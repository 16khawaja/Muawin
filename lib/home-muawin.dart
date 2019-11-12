import 'package:flutter/material.dart';
import 'main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Fundraiser/login.dart';
import 'package:flutter/cupertino.dart';
import 'Sigin_Signup/signin-donor.dart';
import 'package:folk/Sigin_Signup/signin-fundraiser.dart';

class HomeMuawin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              Container(
                alignment: FractionalOffset(0.5, 0.5),

                  child: new Container(
                    width: 300,
                    child: Image(
                      image: AssetImage('images/logo1.png'),
                    ),
                  ),

              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(

                  child: new

                    Text(
                      "Welcome Back..",
                      style: TextStyle(fontSize: 27.0, color: Color(0xff52b600), fontFamily: 'Mansalva-Regular'),

                  ),

                ),
              ),


              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: RaisedButton.icon(


                        color: Color(0xff538b22),
                        icon:
                        Icon(Icons.supervised_user_circle), //`Icon` to display
                        label: Text('Fundraiser'), //`Text` to display
                        textColor: Colors.white,

                        splashColor: Color(0xff55b600),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          //Code to execute when Floating Action Button is clicked
                          //...
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SigninFundraiser()),);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),


                      child: RaisedButton.icon(
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
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SigninDonor(),));
    },

                      ),
                      ),

                  ],
                ),
              ),
              Container(

//              alignment: FractionalOffset(0.5, -1),
                child: new Container(

                  height: 200,
                  width: 500,
                  child: Image(

                    image: AssetImage('images/homegif.gif'),
                  ),
                ),


              ),
            ],
          ),
        ),
      ),
    );
  }
}
