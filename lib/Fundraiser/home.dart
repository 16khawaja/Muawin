import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:folk/Fundraiser/campagin-detail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              'Your Campagins',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff538b22),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Card(
            child: Container(
              width: 180,
              height: 180,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(

                            width: 120,
                            height: 120,
                            child: new Image.asset(
                              'images/backblue.gif',
                              fit: BoxFit.fill,

                            ),

                          ),


                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Campaigin',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color(0xff538b22),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Hello ',
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'bold',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: ' world!'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1.0),
                                child: ButtonBar(
                                  children: <Widget>[
                                    FlatButton(
                                      child: const Text(
                                        'View',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => CampaginDetail(),
                                            ));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
