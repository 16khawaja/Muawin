import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:folk/home-muawin.dart';


class SuccessfulDonor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xffffffff),
      //var height=


        floatingActionButton: Transform.scale(
      scale: 1.1,

        child: FloatingActionButton(
          backgroundColor: Color(0xff52b600),
          elevation: 20.0,
            child: Text('DONE',style: TextStyle(fontSize: 14),),

          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeMuawin(),));
           // print("Succefully SignUp..! ");
          }
        ),
        ),

      body: SafeArea(


         child: Center(

           child: Column(

             mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
           Container(

            child: new Text(

              "Successfully Done",
              style: TextStyle(
                  fontSize: 27.0,
                  color: Color(0xff52b600),
                  fontFamily: 'Mansalva-Regular'),
            ),



          ),]

        ),
         ),

      ),
    );
  }
}
