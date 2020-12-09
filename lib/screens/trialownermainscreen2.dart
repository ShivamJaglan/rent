import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_widget/search_widget.dart';
import 'package:try1/tenantadd/page1.dart';
class ownermainscreen2 extends StatefulWidget {

  // final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  _ownermainscreen2State createState() => _ownermainscreen2State();
}

class _ownermainscreen2State extends State<ownermainscreen2> {
  Future navigatetopage1(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => page1()));
  }

  final List<ListTile> mylist=[ ListTile(
    selected:true,
    leading: CircleAvatar(  child: Text("1"), ),
    title: Text("List Name 1"),
    subtitle: Text("You can specify subtitle"),
    onTap: (){},
  ),
    ListTile(
      leading: CircleAvatar(  child: Text("2"), ),
      title: Text("List Name 2"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("3"), ),
      title: Text("List Name 3"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("4"), ),
      title: Text("List Name 4"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("5"), ),
      title: Text("List Name 5"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("6"), ),
      title: Text("List Name 6"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("3"), ),
      title: Text("List Name 3"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("4"), ),
      title: Text("List Name 4"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("5"), ),
      title: Text("List Name 5"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("6"), ),
      title: Text("List Name 6"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("3"), ),
      title: Text("List Name 3"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("4"), ),
      title: Text("List Name 4"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("5"), ),
      title: Text("List Name 5"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),
    ListTile(
      leading: CircleAvatar(  child: Text("6"), ),
      title: Text("List Name 6"),
      subtitle: Text("You can specify subtitle"),
      onTap: (){},
    ),   ];
  var items=List<ListTile> ();
  TextEditingController editingController = TextEditingController();


  @override
  void initState() {
    items.addAll(mylist);
    super.initState();
  }


  void filterSearchResults(String query) {
    List<ListTile> dummySearchList = List<ListTile>();
    dummySearchList.addAll(mylist);
    if(query.isNotEmpty) {
      List<ListTile> dummyListData = List<ListTile>();
      dummySearchList.forEach((item) {
        if(item.title.toString().toLowerCase()==query.toLowerCase()) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(mylist);
      });
    }
  }



  void settingModalBottomSheet(context){
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
                    onPressed: () {navigatetopage1(context);},
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
            onPressed: () {settingModalBottomSheet(context);},
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Property name " +"\u{25BC}",
              ),
            ),
          ),
        ),

        backgroundColor: Colors.blue[900],
        // toolbarHeight: kToolbarHeight,
        automaticallyImplyLeading: false,

      ),
      backgroundColor: Colors.grey[300],

      floatingActionButton: Container(
        width:230,
        child: FittedBox(
          child: FloatingActionButton.extended(

            onPressed: () {navigatetopage1(context);},

            icon: Icon(Icons.person_add),
            label: Text("  Add Kirayedar"),
            backgroundColor: Colors.red[900],


          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,

            height: 160,
            padding: EdgeInsets.only(left: 5.0,top: 5.0,right: 5.0, bottom: 25.0),
            color: Colors.blue[900],
            child: Card(
              color: Colors.white ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IntrinsicHeight(
                    child: Row(
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
                        VerticalDivider(
                          thickness: 1,
                          color: Color(0xFFF6F4F4),
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
                  ),
//               SizedBox(
//                 height: 20,
//               ),
//                 Divider(),
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
          Container(
            color: Colors.white,
            width: double.infinity,
            child: TextField(
                  onChanged: (value) {
                    filterSearchResults(value);
                  },

              controller: editingController,
              decoration: InputDecoration(
                  // labelText: "Search",
                  hintText: "Search",
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(25.0)))
              ),
            ),
          ),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.all(0),
          // shrinkWrap: true,
    itemCount: items.length,
    itemBuilder: (context, index) {
    return items[index];
    },
        ),
      ),
      ]

      ),
    );
  }
}
