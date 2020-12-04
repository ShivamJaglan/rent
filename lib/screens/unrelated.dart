/// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,

        height: 150,
        padding: EdgeInsets.only(left: 5.0,top: 5.0,right: 5.0, bottom: 25.0),
        color: Colors.blue[900],
        child: Card(
          color: Colors.white ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(

                    children: <Widget>[
                      SizedBox(
                          height: 15),
                      Text('\u{20B9}${0}',style:TextStyle(
                          color: Colors.red, fontSize: 20),
                      ),
                      Text('Rent Due',style: TextStyle(
                          color: Colors.indigo,fontSize: 20
                      ),
                      ),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      SizedBox(
                          height: 15),
                      Text('0',style:TextStyle(
                          color: Colors.red,fontSize: 20),
                      ),
                      Text('New Issues',style: TextStyle(
                          color: Colors.indigo,fontSize: 20
                      ),
                      ),
                    ],
                  ),

                ],
              ),
//               SizedBox(
//                 height: 20,
//               ),
              Container(
                height: 40,

                width:double.infinity,
                child: RaisedButton.icon(
                  icon: Icon( Icons.add,),
                  label:  Text('NEW INSTRUCTIONS', style: TextStyle(color: Colors.red,), ),
                  onPressed: () {},
//                   padding: EdgeInsets.all(50),

                  color: Colors.white,
                  textColor: Colors.blue,
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

