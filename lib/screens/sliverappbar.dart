import 'package:flutter/material.dart';

import 'package:try1/screens/ownermainscreen.dart';


class MyAppBar extends StatelessWidget {

  final double barHeight = 60.0;

  const MyAppBar();


  void isettingModalBottomSheet(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.music_note),
                    title: new Text('Music'),
                    onTap: () => {}
                ),
                new ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text('Video'),
                  onTap: () => {},
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text("ADD NEW PROPERTY",
                      style: TextStyle(color: Colors.white,
                      ),

                    ),
                    onPressed: () {},
                    color: Colors.indigo[900],
                    textColor: Colors.white,
                  ),
                )
              ],
            ),
          );
        }
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.indigo[900],
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(

            textColor: Colors.white,
            onPressed: () {isettingModalBottomSheet(context);},
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Property name " +"\u{25BC}",
              ),
            ),
          ),
        ],
      ),
    );
  }
}