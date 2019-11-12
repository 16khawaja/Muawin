import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:folk/Sigin_Signup/successful.dart';
import 'package:folk/home-muawin.dart';

class SignunpDonor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    final name = TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      obscureText: false,
      // autofocus: true,
      decoration: InputDecoration(
          labelText: "Name:",
          labelStyle: new TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.lightGreen,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final username = TextFormField(
      textInputAction: TextInputAction.next,
      obscureText: false,
      decoration: InputDecoration(
          labelText: "UserName",
          labelStyle: new TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.lightGreen,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final emailField = TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      obscureText: false,
//
      decoration: InputDecoration(
          labelText: "Email",
          labelStyle: new TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.lightGreen,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextFormField(
      textInputAction: TextInputAction.next,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        labelStyle: new TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.lightGreen)),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final phonenumber = TextFormField(
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.done,


      // maxLength: 11,

      inputFormatters: <TextInputFormatter>[
        WhitelistingTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11),
      ],

      decoration: InputDecoration(
        labelText: "Phone Number",
        labelStyle: new TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.lightGreen)),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final signupButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff52b600),
      textStyle: TextStyle(color: Colors.white, fontSize: 10.0),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SuccessfulDonor(),
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
        iconTheme: IconThemeData(
          color: Color(0xff52b600), //change your color here
        ),
        title: new Text('Donor Signup',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xff52b600),
            )),
        backgroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 25.0),
                Text(
                  'Connect To Help ',
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff538b22),
                  ),
                ),
                SizedBox(height: 35.0),
                SizedBox(height: 10.0),
                name,
                SizedBox(height: 10.0),
                username,
                SizedBox(height: 10.0),
                emailField,
                SizedBox(height: 10.0),
                passwordField,
                SizedBox(height: 10.0),
                phonenumber,
                SizedBox(height: 35.0),
                signupButton
              ]),
        ),
      ),
    );
  }
}
