import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try1/screens/newowner.dart';
import 'package:try1/screens/newtenant.dart';

class HomeScreen2 extends StatelessWidget {
  FirebaseUser user;

  HomeScreen2({this.user});
  Future navigatetonewownerPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => newowner()));
  }
  Future navigatetonewtenantPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => newtenant()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Kirayedar',
          style: TextStyle(color: Colors.red[900],),),

        backgroundColor: Colors.white,
        // toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                child: Text('Landlord',
                  style: TextStyle(color: Colors.white, fontSize: 20), ),
                onPressed: () {navigatetonewownerPage(context);},
                // padding: EdgeInsets.all(50),
                color: Colors.indigo[900],
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: 40,) ,
            Container(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                child: Text('Kirayedar',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {navigatetonewtenantPage(context);},
                // padding: EdgeInsets.all(50),
                color: Colors.indigo[900],
                textColor: Colors.white,
              ),
            ),
          ],

        ),
      ) ,

    ) ;
  }
}
