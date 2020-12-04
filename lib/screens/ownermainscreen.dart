import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ownermainscreen extends StatelessWidget {


  void _settingModalBottomSheet(context){
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
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: FlatButton(

              textColor: Colors.white,
              onPressed: () {_settingModalBottomSheet(context);},
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Property name " +"\u{25BC}",
                ),
              ),
            ),
        ),

        backgroundColor: Colors.indigo[900],
        // toolbarHeight: kToolbarHeight,
        automaticallyImplyLeading: false,

      ),
      backgroundColor: Colors.grey[300],

      floatingActionButton: Container(
        width:230,
        child: FittedBox(
          child: FloatingActionButton.extended(

            onPressed: () {},

            icon: Icon(Icons.person_add),
            label: Text("  Add Kirayedar"),
            backgroundColor: Colors.red[900],


          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          width: 300,

          height: 160,
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
                        SizedBox(
                          height: 5,
                        ),
                        Text('Rent Due',style: TextStyle(
                            color: Colors.indigo,fontSize: 15
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
                        SizedBox(
                          height: 5,
                        ),
                        Text('New Issues',style: TextStyle(
                            color: Colors.indigo,fontSize: 15
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
                  height: 50,

                  width:double.infinity,
                  child: RaisedButton.icon(
                    icon: Icon( Icons.add,),
                    label:  Text('MAKE ANNOUNCEMENT', style: TextStyle(color: Colors.red,), ),
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
        // child: Card(
        //   child:Column(
        //
        //     children: <Widget>[
        //       Row(
        //
        //         children: <Widget>[
        //           InkWell(
        //             onTap: (){},
        //             child: Column(
        //               children: <Widget>[
        //                 Text("0", style: TextStyle(color: Colors.red, fontSize: 30),
        //                 ),
        //                 Text("Rent Due", style: TextStyle(color: Colors.indigo[900], fontSize: 25),)
        //               ],
        //             ),
        //           ),
        //           InkWell(
        //             onTap: (){},
        //             child: Column(
        //               children: <Widget>[
        //                 Text("0", style: TextStyle(color: Colors.red, fontSize: 30),
        //                 ),
        //                 Text(" Issues", style: TextStyle(color: Colors.indigo[900], fontSize: 25),)
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //       RaisedButton(
        //         child: Text("New Announcement", style: TextStyle(fontSize: 13, color: Colors.blue[700]),
        //         ),
        //         color: Colors.white,
        //         textColor: Colors.blue[700],
        //
        //       )
        //     ],
        //   ) ,
        // ),
      ),
    );
  }
}
