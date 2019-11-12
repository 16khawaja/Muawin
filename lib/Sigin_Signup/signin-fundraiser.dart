import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folk/Sigin_Signup/signup-fundraiser.dart';
import 'package:folk/home-muawin.dart';
import 'package:folk/Sigin_Signup/signup-donor.dart';
import 'package:folk/Fundraiser/general.dart';



class SigninFundraiser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    final emailField = TextFormField(
      obscureText: false,
//      autofocus: true,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          hoverColor: Colors.lightGreen,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.lightGreen)),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff52b600),
      textStyle: TextStyle(color: Colors.white, fontSize: 10.0),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GeneralFundraiser(),
              ));
        },
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
      ),
    );

    final signupButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff52b600),
      textStyle: TextStyle(color: Colors.white, fontSize: 10.0),
      child: MaterialButton(
        // minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SuccessfulFundraiser(),
              ));
        },
        child: Text(
          "Signup",
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xffffffff),
      //var height=

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
//        leading: new IconButton(
//          icon: new Icon(Icons.arrow_left, color: Colors.orange),
//          onPressed: () => Navigator.of(context).pop(),
//        ),
        iconTheme: IconThemeData(
          color: Color(0xff52b600), //change your color here
        ),

        title: new Text('Fundraiser Signin',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xff52b600),
            )),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(

          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.

          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25.0),
              Text(
                'Youre Using As Fundraiser',
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff538b22),
                ),
              ),
              SizedBox(height: 35.0),
              SizedBox(height: 15.0),
              emailField,
              SizedBox(height: 15.0),
              passwordField,
              SizedBox(
                height: 20.0,
              ),
              loginButon,
              SizedBox(
                height: 50.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // backgroundColor: Colors.green,
                children: <Widget>[
                  Container(
                    color: Colors.lightGreen,
                    height: 2,
                    width: _width * 0.80,
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 20.0,
                child: new Text(
                  "Become a Fundraiser ?",
                  style: TextStyle(color: Color(0xff538b22), fontSize: 14),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              signupButon,
            ],
          ),
        ),
      )),
    );
  }
}
