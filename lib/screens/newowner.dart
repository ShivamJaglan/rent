import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newowner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Kirayedar',
        style: TextStyle(color: Colors.red[900],),),

        backgroundColor: Colors.white,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                  hintText: "Property name",
                  errorStyle: TextStyle(
                    color: Colors.red,
                    wordSpacing: 5.0,
                  ),
                  hintStyle: TextStyle(
                      letterSpacing: 1.3,
                  ),
                  contentPadding: EdgeInsets.all(15.0),
                  // Inside box padding
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),

                      gapPadding: 0.0, borderRadius: BorderRadius.circular(1.5)),
              ),
            ),

            Expanded(

              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ButtonTheme(
                  height: 30,
                  minWidth: double.infinity,
                  child: RaisedButton(

                    child: Text('CREATE',
                    style: TextStyle(color: Colors.white),),
                    onPressed: () {},
                    padding: EdgeInsets.all(50),

                    color: Colors.indigo[900],
                  textColor: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
