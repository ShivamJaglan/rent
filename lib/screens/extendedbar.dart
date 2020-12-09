import 'package:flutter/material.dart';



class MyFlexiableAppBar extends StatelessWidget {

  final double appBarHeight = 66.0;

  const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight+ appBarHeight),
      height: statusBarHeight + appBarHeight+ 60,
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

    );
  }
}