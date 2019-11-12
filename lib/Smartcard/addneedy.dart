import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:folk/Sigin_Signup/signin-fundraiser.dart';

class AddNeedy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    final Name = TextFormField(
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
    final Nic = TextFormField(
      textInputAction: TextInputAction.next,
      obscureText: false,
      inputFormatters: <TextInputFormatter>[
        WhitelistingTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(13),
      ],
      decoration: InputDecoration(
          labelText: "NIC",
          labelStyle: new TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.lightGreen,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final Details = TextFormField(
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.done,
      maxLines: null,

      decoration: InputDecoration(
          labelText: "Details",
          labelStyle: new TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.lightGreen,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final Confirm = Material(
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
                builder: (context) => SigninFundraiser(),
              ));
        },
        child: Text(
          "Confirm",
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
      ),
    );
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
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
            title: new Text('Add needy',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff52b600),
                )),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
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
                  Name,
                  SizedBox(height: 10.0),
                  Nic,
                  SizedBox(height: 10.0),

//                  RichText(
//                      text: TextSpan(
//                      text: 'Hello ',
//                      style: DefaultTextStyle.of(context).style,
//                      children: <TextSpan>[
//                        TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
//                        TextSpan(text: ' world!'),
//                    ],
//                    ),
//                  ),
            Details,
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Confirm,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
