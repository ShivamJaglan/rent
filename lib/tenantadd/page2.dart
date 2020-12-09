import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try1/tenantadd/rentamount.dart';

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  final _formKey = GlobalKey<FormState>();
  int selectedRadioTile;
  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  Future navigatetorentamount(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => rentamount()));}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Select renting Pattern',
          style: TextStyle(color: Colors.white,),),

        backgroundColor: Colors.blue[900],
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        leading: IconButton (icon:Icon(Icons.arrow_back)),
        // toolbarHeight: 70,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[


                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 100,
                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        color: Colors.blue,
                      width: 2.0,
                    ),
                    ),
                    child: Center(
                      child: RadioListTile(
                        value: 1,
                        groupValue: selectedRadioTile,
                        title: Text("Monthly"
                        , style: TextStyle(
                            fontSize: 20
                          ),),
                        subtitle: Text("Radio 1 Subtitle"),
                        onChanged: (val) {
                          print("Radio Tile pressed $val");
                          setSelectedRadioTile(val);
                        },
                        activeColor: Colors.red,
                        // secondary: OutlineButton(
                        //   child: Text("Say Hi"),
                        //   onPressed: () {
                        //     print("Say Hello");
                        //   },
                        // ),
                        selected: false,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 100,
                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        color: Colors.blue[800],
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: RadioListTile(
                        value: 2,
                        groupValue: selectedRadioTile,
                        title: Text("Yearly"
                          , style: TextStyle(
                              fontSize: 20
                          ),),
                        subtitle: Text("Radio 2 Subtitle"),
                        onChanged: (val) {
                          print("Radio Tile pressed $val");
                          setSelectedRadioTile(val);
                        },
                        activeColor: Colors.red,
                        // secondary: OutlineButton(
                        //   child: Text("Say Hi"),
                        //   onPressed: () {
                        //     print("Say Hello");
                        //   },
                        // ),
                        selected: false,
                      ),
                    ),
                  ),
                ),





                // Container(
                //   width: double.infinity,
                //   height:60,
                //   child: Align(
                //     alignment: FractionalOffset.bottomCenter,
                //     child: RaisedButton(
                //
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           Text("Continue",style: TextStyle(fontSize: 20)),
                //           Icon(Icons.navigate_next)
                //         ],
                //       ),
                //       // child: Text('Continue',
                //       //   style: TextStyle(color: Colors.white, fontSize: 20),),
                //       onPressed: () {
                //         if(_formKey.currentState.validate()==false)
                //           {
                //            return null;
                //           }
                //         else{
                //
                //         }
                //       },
                //       // padding: EdgeInsets.all(50),
                //
                //       color: Colors.indigo[900],
                //       textColor: Colors.white,),
                //   ),
                // ),
                Expanded(

                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ButtonTheme(
                      height: 60,
                      minWidth: double.infinity,
                      child: RaisedButton(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Continue",style: TextStyle(fontSize: 20)),
                            Icon(Icons.navigate_next)
                          ],
                        ),
                        // child: Text('Continue',
                        //   style: TextStyle(color: Colors.white, fontSize: 20),),
                        onPressed: () {
                          if(_formKey.currentState.validate()==false)
                          {
                            return null;
                          }
                          else{
                            navigatetorentamount(context);
                          }
                        },
                        // padding: EdgeInsets.all(50),

                        color: Colors.indigo[900],
                        textColor: Colors.white,),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

