import 'package:flutter/material.dart';
import 'home-muawin.dart';
import 'wallpaper.dart';
import 'Fundraiser/login.dart';
import 'package:folk/Smartcard/general.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muawin',
      debugShowCheckedModeBanner: true,

      home: HomeMuawin(),
    );
  }
}
