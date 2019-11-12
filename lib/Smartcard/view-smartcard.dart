import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddSmartcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
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
            title: new Text('View Smart Cards',
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
        body: Center(child: viewcards()));
  }
}

class viewcards extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListItemWidget();
  }
}

class ListItemWidget extends State<viewcards> {
  List items = getDummyList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            background: Container(
              alignment: AlignmentDirectional.centerEnd,
              color: Colors.redAccent,
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            direction: DismissDirection.endToStart,
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  height: 100.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                topLeft: Radius.circular(5)),
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('images/qrcode.png'),
                            )),
                      ),
                      Container(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(1, 5, 1, 5),
                                child: Container(


                                  child: Text(
                                    "Sameer",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff538b22),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Text(

                                items[index],
                                style: TextStyle(
                                  fontSize: 14.0,

                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 3, 0, 2),
                                child: Container(
                                  width: 260,
                                  child: Text(
                                    "Remaning Balance: Rs.200",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 48, 48, 54)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Container(
                                  width: 260,
                                  child: Text(
                                    "Expirey Date: 9Nov",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.redAccent),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  static List getDummyList() {
    List list = List.generate(10, (i) {
      return "NIC ${i + 1}";
    });
    return list;
  }
}
