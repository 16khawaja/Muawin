import 'package:flutter/material.dart';
import 'package:folk/QR/qr-image.dart';
import 'dart:core';
import 'package:flutter/services.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class AssignSmartcard extends StatefulWidget {
  _AssignSmartcard createState() => _AssignSmartcard();
}

class _AssignSmartcard extends State<AssignSmartcard>{
  String barcode ;
  TextEditingController myController = TextEditingController();
  @override

  void _qrgenerate() {
     barcode = myController.text;
    print('login attempt:  with ');

  }


  @override
  Widget build(BuildContext context) {
    final NeedyNIC = TextFormField(
      obscureText: false,
      controller: myController,
      validator: (value){

        this.barcode=value;
        print(barcode);
      },
      onEditingComplete: (){

    this.barcode=    myController.text;
    print(barcode);

      },

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
    final CardID = TextFormField(
      textInputAction: TextInputAction.next,
      obscureText: false,
      decoration: InputDecoration(
          labelText: "Card ID",
          labelStyle: new TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.lightGreen,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
     TextFormField Amount = TextFormField(

      textInputAction: TextInputAction.done,
      obscureText: false,

      decoration: InputDecoration(
          labelText: "Amount",
          labelStyle: new TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.lightGreen,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final ExpireyDate = TextFormField(
      textInputAction: TextInputAction.next,
      obscureText: false,
      decoration: InputDecoration(
          labelText: "Expirey Date",
          labelStyle: new TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.lightGreen)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hoverColor: Colors.lightGreen,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Color(0xff52b600), //change your color here
                ),
                title: new Text('Assign SmartCard',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff52b600),
                    )),
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context, true),
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
                      NeedyNIC,
                      SizedBox(height: 10.0),
                      CardID,
                      SizedBox(height: 10.0),
                      Amount,
                      SizedBox(height: 10.0),
                ExpireyDate,
//                FlatButton(
//                    onPressed: () {
//                      DatePicker.showDatePicker(context,
//                          showTitleActions: true,
//                          minTime: DateTime(2018, 3, 5),
//                          maxTime: DateTime(2019, 6, 7), onChanged: (date) {
//                            print('change $date');
//                          }, onConfirm: (date) {
//                            print('confirm $date');
//                          }, currentTime: DateTime.now(), locale: LocaleType.zh);
//                    },
//                    child: Text(
//                      'show date time picker (Chinese)',
//                      style: TextStyle(color: Colors.blue),
//                    )),
                      QrImage(
                        data: '$barcode',
                        size: 100.0,
                      ),

                      Text(myController.text),
                    ]),
              ),
            )));
  }


}

