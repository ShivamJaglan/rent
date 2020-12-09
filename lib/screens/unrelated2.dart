import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    items: List<ListItem>.generate(
      1000,
          (i) => i % 6 == 0
          ? HeadingItem("Heading $i")
          : MessageItem("Sender $i", "Message body $i"),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
        Container(
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
        ),

            ListView.builder(
              // Let the ListView know how many items it needs to build.
              itemCount: items.length,
              // Provide a builder function. This is where the magic happens.
              // Convert each item into a widget based on the type of item it is.
              itemBuilder: (context, index) {
                final item = items[index];

                return ListTile(
                  title: item.buildTitle(context),
                  subtitle: item.buildSubtitle(context),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget buildSubtitle(BuildContext context) => null;
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  Widget buildTitle(BuildContext context) => Text(sender);

  Widget buildSubtitle(BuildContext context) => Text(body);
}