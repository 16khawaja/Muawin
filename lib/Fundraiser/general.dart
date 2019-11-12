import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:folk/home-muawin.dart';
import 'package:folk/Fundraiser/home.dart';
import 'package:folk/Fundraiser/account.dart';
import 'package:folk/Fundraiser/notification.dart';
import 'package:folk/Smartcard/general.dart';
import 'package:folk/Sigin_Signup/signin-fundraiser.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';

class GeneralFundraiser extends StatefulWidget {
  @override
  _GeneralFundraiser createState() => new _GeneralFundraiser();
}

class _GeneralFundraiser extends State<GeneralFundraiser> {
  List<Widget> _pages;
  Widget _page1;
  Widget _page2;
  Widget _page3;

  int _currentIndex;
  Widget _currentPage;

  @override
  void initState() {
    super.initState();

    _page1 = Home();
    _page2 = Account();
    _page3 = Notifications();

    _pages = [_page1, _page2, _page3];

    _currentIndex = 0;
    _currentPage = _page1;
  }

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 2,
        //leading: new Container(),
        backgroundColor: Color(0xff52b600),
        title: Text('Muawin', style: TextStyle(), textAlign: TextAlign.center),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PopupMenuButton(
              child: IconButton(
                  icon: Icon(
                    Icons.drag_handle,
                    color: Colors.white,
                  ),
                  onPressed: null),
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: FlatButton(
                      onPressed: () {
                        /*...*/
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GeneralSmartcard(),));
                      },
                      child: Text(
                        "Smart Card",
                      ),
                    )
                ),
                PopupMenuItem(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeMuawin(),));
                      },
                      child: Text(
                        "Logout",
                      ),
                    )
                ),

              ],
            ),
          ),
        ],
      ),
      body: _currentPage,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => changeTab(index),
          currentIndex: _currentIndex,
          fixedColor: Color(0xff52b600),
          items: [
            BottomNavigationBarItem(
                title: Text('Home'), icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                title: Text('Account'), icon: Icon(Icons.account_circle)),
            BottomNavigationBarItem(
                title: Text('Notifications'), icon: Icon(Icons.notifications))
          ]),
    );
  }
}
