import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:folk/home-muawin.dart';
import 'package:folk/Donor/home-donor.dart';
import 'package:folk/Donor/search-donor.dart';
import 'package:folk/Donor/notification-donor.dart';
import 'package:folk/Donor/account-donor.dart';

class GeneralDonor extends StatefulWidget {
  @override
  _GeneralDonor createState() => new _GeneralDonor();
}

class _GeneralDonor extends State<GeneralDonor> {
  List<Widget> _pages;
  Widget _page1;
  Widget _page2;
  Widget _page3;
  Widget _page4;

  int _currentIndex;
  Widget _currentPage;

  @override
  void initState() {
    super.initState();

    _page1 = HomeDonor();
    _page2 = SearchDonor();
    _page3 = NotificationDonor();
    _page4 = AccountDonor();

    _pages = [_page1, _page2, _page3, _page4];

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeMuawin(),
                        ));
                  },
                  child: Text(
                    "Logout",
                  ),
                )),
              ],
            ),
          ),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Drawer(
//              // Add a ListView to the drawer. This ensures the user can scroll
//              // through the options in the drawer if there isn't enough vertical
//              // space to fit everything.
//              child: ListView(
//                // Important: Remove any padding from the ListView.
//                // padding: EdgeInsets.zero,
//                children: <Widget>[
//                  DrawerHeader(
//                    child: Text('Drawer Header'),
//                    decoration: BoxDecoration(
//                      color: Colors.grey,
//                    ),
//                  ),
//                  ListTile(
//                    title: Text('Item 1'),
//                    onTap: () {
//                      // Update the state of the app.
//                      // ...
//                    },
//                  ),
//                  ListTile(
//                    title: Text('Item 2'),
//                    onTap: () {
//                      // Update the state of the app.
//                      // ...
//                    },
//                  ),
//                ],
//              ),
//            ),
//          ),
        ],
      ),
      body: _currentPage,

      bottomNavigationBar: BottomNavigationBar(

          onTap: (index) => changeTab(index),
          currentIndex: _currentIndex,
          fixedColor: Colors.white70,
          items: [

            BottomNavigationBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home,),backgroundColor: Color(0xff52b600),),
            BottomNavigationBarItem(
                title: Text('Search'),
                icon: Icon(Icons.search, ),backgroundColor: Color(0xff52b600),),
            BottomNavigationBarItem(
                title: Text('Notifications'),
                icon: Icon(Icons.notifications,),backgroundColor: Color(0xff52b600),),
            BottomNavigationBarItem(
                title: Text('Account'),
                icon: Icon(Icons.face,),backgroundColor: Color(0xff52b600),),

          ]),
    );
  }
}
