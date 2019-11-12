import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:folk/Smartcard/view-smartcard.dart';
import 'package:folk/Smartcard/addneedy.dart';
import 'package:folk/Smartcard/assign-smartcard.dart';
class GeneralSmartcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    final addneedy = Material(
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
                builder: (context) => AddNeedy(),
              ));
        },
        child: Text(
          "Add Needy",
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
      ),
    );
    final addsmartcard = Material(
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
                builder: (context) => AddSmartcard(),
              ));
        },
        child: Text(
          "Add Smart card",
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
      ),
    );
    final assignsmartcard = Material(
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
                builder: (context) => AssignSmartcard(),
              ));
        },
        child: Text(
          "Assign Smart card",
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
      ),
    );


    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xff52b600), //change your color here
          ),
          title: new Text('Smart card',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xff52b600),
              )),
          backgroundColor: Colors.white,
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),
            )
        ),
body: Center(
    child: Padding(
      padding: const EdgeInsets.all(50.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

      new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


          Padding(
            padding: const EdgeInsets.only( bottom: 24.0),
            child: addneedy,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:24.0),
            child: addsmartcard,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:28.0),
            child: assignsmartcard,
          ),

        ],
      )]
),
    ),
        ),
    )
    );
  }
}