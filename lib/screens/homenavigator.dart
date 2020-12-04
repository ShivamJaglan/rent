import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try1/screens/ownermainscreen.dart';
import 'package:try1/screens/placeholderwidget.dart';

class homenavigator extends StatefulWidget {
  @override
  _homenavigatorState createState() => _homenavigatorState();
}


class _homenavigatorState extends State<homenavigator> {

  void onTabTapped(int index) { setState(() { _currentIndex = index; }); }
  int _currentIndex = 0;
  final List<Widget> _children = [ownermainscreen(),placeholderwidget(Colors.green),placeholderwidget(Colors.red),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Kirayedar',
      //     style: TextStyle(color: Colors.red[900],),),
      //
      //   backgroundColor: Colors.white,
      //   // toolbarHeight: 70,
      //   automaticallyImplyLeading: false,
      // ),
      backgroundColor: Colors.grey[300],
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap:  onTabTapped,
        iconSize:40.0,
        currentIndex: _currentIndex,
        items: [BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Home"),
        ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: Text("Messages"),
         ) ,
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text("More"),
          ),
        ],
      ),
    );
  }
}

