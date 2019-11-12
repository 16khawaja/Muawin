import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:async';

class CampaginDetail extends StatefulWidget {
  @override
  _CampaginDetail createState() => _CampaginDetail();
}

class _CampaginDetail extends State<CampaginDetail> {
  bool _loading;
  double _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: new Text('Campaign',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              )),
          backgroundColor: Color(0xff52b600),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, true),
          )
      ),
      body: SafeArea(
        child: Stack(children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
                    child: Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 2.0,
                          child: new Image.asset(
                            'images/ocean.jpg',
                            width: size.width,
                            height: size.height,
                            fit: BoxFit.fill,
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 2.0,
                          child: new Image.asset(
                            'images/transparent.png',
                            width: size.width,
                            height: size.height,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 112.0, left: 10),
                          child: Text("Campagin",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                        // bottomLeft
                                        offset: Offset(1, -1),
                                        color: Colors.grey),
                                    Shadow(
                                        // bottomRight
                                        offset: Offset(1, -1),
                                        color: Colors.grey),
                                    Shadow(
                                        // topRight
                                        offset: Offset(0, 0),
                                        color: Colors.grey),
                                    Shadow(
                                        // topLeft
                                        offset: Offset(0, 0),
                                        color: Colors.grey),
                                  ],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21.0,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 142.0, left: 18),
                          child: Text("By Fundraiser",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Description",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      // topLeft
                                      offset: Offset(0, -1),
                                      color: Colors.grey),
                                ],
                                fontWeight: FontWeight.bold,
                                fontSize: 21.0,
                                color: Colors.lightGreen)),
                      ),
                    ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 6.0, left: 8, right: 8, bottom: 8),
                      child: Container(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. ",
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                          maxLines: 3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Media",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    // topLeft
                                    offset: Offset(0, -1),
                                    color: Colors.grey),
                              ],
                              fontWeight: FontWeight.bold,
                              fontSize: 21.0,
                              color: Colors.lightGreen)),
                    ),
                    CarouselSlider(
                      autoPlay: true,
                      pauseAutoPlayOnTouch: Duration(seconds: 5),
                      height: MediaQuery.of(context).size.height * 0.3,
                      items: <Widget>[
                        for (var i = 0; i < 3; i++)
                          Container(
                            margin:
                                const EdgeInsets.only(top: 20.0, left: 20.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: new ExactAssetImage('images/A1.png'),
                                fit: BoxFit.fitHeight,
                              ),
                              // border:
                              //     Border.all(color: Theme.of(context).accentColor),
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Current Status",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    // topLeft
                                    offset: Offset(0, -1),
                                    color: Colors.grey),
                              ],
                              fontWeight: FontWeight.bold,
                              fontSize: 21.0,
                              color: Colors.lightGreen)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        LinearProgressIndicator(
                          value: _progressValue,
                        ),
                        Text('${(_progressValue * 100).round()}%'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  void _updateProgress() {
    const oneSec = const Duration(seconds: 2);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.2;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          _progressValue = 0;
          t.cancel();
          return;
        }
      });
    });
  }
}
