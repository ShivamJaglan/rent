import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try1/tenantadd/page2.dart';

class page1 extends StatefulWidget {

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {

  final _formKey = GlobalKey<FormState>();

  Future navigatetopage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => page2()));}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Add a Kirayedar',
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
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Enter Kirayedar's full name",
                    labelStyle: TextStyle(
                      fontSize: 17,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.red,
                      wordSpacing: 5.0,
                    ),
                    hintStyle: TextStyle(
                      letterSpacing: 1.3,
                    ),
                    contentPadding: EdgeInsets.all(15.0),
                    // Inside box padding
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.indigo[900]),
                    //
                    //     gapPadding: 0.0, borderRadius: BorderRadius.circular(1.5)),
                  ),



                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter Kirayedar's full name";
                    }
                    return null;
                  },
                ),
                // SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Mobile Number",
                    labelStyle: TextStyle(
                      fontSize: 17,
                    ),
                    // hintText: "Mobile Number",
                    errorStyle: TextStyle(
                      color: Colors.red,
                      wordSpacing: 5.0,
                    ),
                    hintStyle: TextStyle(
                      letterSpacing: 1.3,
                    ),
                    contentPadding: EdgeInsets.all(15.0),
                    // Inside box padding
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.indigo[900]),
                    //
                    //     gapPadding: 0.0, borderRadius: BorderRadius.circular(1.5)),
                  ),



                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter a Vaild number";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(4.0),
                     side: BorderSide(color: Colors.blue)
                 ),
                    child: Text('Add From Contacts',
                      style: TextStyle(color: Colors.blue[800], fontSize: 20),),
                    onPressed: () {},
                    // padding: EdgeInsets.all(50),

                    color: Colors.white,
                    textColor: Colors.blue[800],),
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
                                    navigatetopage2(context);
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

