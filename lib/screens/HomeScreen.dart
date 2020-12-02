import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try1/screens/newowner.dart';
import 'package:try1/screens/newtenant.dart';

class HomeScreen extends StatefulWidget {

  final FirebaseUser user;

  HomeScreen({this.user});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> lst = ['Landlord','tenant',];
  int selectedIndex = 0;
  void changeIndex(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  Future navigateTonewownerPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => newowner()));
  }
  Future navigateTonewtenantPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => newtenant()));
  }
  Widget customRadio(String txt,int index){
    return OutlineButton(

      onPressed: () { changeIndex(index);

          if(selectedIndex==0){
          navigateTonewownerPage(context);}
          else{
            navigateTonewtenantPage(context);
          }
      },
      // onPressed: () => changeIndex(index),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      borderSide: BorderSide(color: selectedIndex == index ? Colors.cyan : Colors.grey),

      child: Text(txt,style: TextStyle(color: selectedIndex == index ?Colors.cyan : Colors.grey,),),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(


      child: Scaffold(
          backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(

                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green[900], Color(0xFF191414)]),),

          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              // SizedBox(height:32),
              // Text("You are Logged in succesfully", style: TextStyle(color: Colors.lightBlue, fontSize: 20,),),
              // SizedBox(height: 16,),
              // Text("${widget.user.phoneNumber}", style: TextStyle(color: Colors.grey, ),),
              SizedBox(height:16),
              Container(

                  padding : EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
                width: double.infinity,
                  // color: Colors.black,
                  child: customRadio(lst[0],0)),
              Container(
                // color: Colors.black,
                  padding : EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
                  width: double.infinity,
                  child: customRadio(lst[1],1)),

            ],
          ),
        ),
      ),
    );
  }
}