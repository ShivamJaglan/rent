import 'package:firebase_auth/firebase_auth.dart';
import 'package:try1/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:try1/screens/HomeScreen2.dart';

class newlogin extends StatelessWidget {
  final _phoneController = TextEditingController();

  final _codeController = TextEditingController();

  Future<bool> loginUser(String phone, BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async {
          Navigator.of(context).pop();

          AuthResult result = await _auth.signInWithCredential(credential);

          FirebaseUser user = result.user;

          if (user != null) {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreen2(user: user,)
            ));
          } else {
            print("Error");
          }

          //This callback would gets called when verification is done auto maticlly
        },
        verificationFailed: (AuthException exception) {
          print(exception);
        },
        codeSent: (String verificationId, [int forceResendingToken]) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Give the code?", style: TextStyle(color: Colors.indigo[900]),),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,

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
                        controller: _codeController,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Confirm"),
                      textColor: Colors.white,
                      color: Colors.indigo[900],
                      onPressed: () async {
                        final code = _codeController.text.trim();
                        AuthCredential credential = PhoneAuthProvider
                            .getCredential(
                            verificationId: verificationId, smsCode: code);

                        AuthResult result = await _auth.signInWithCredential(
                            credential);

                        FirebaseUser user = result.user;

                        if (user != null) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => HomeScreen2(user: user,)
                          ));
                        } else {
                          print("Error");
                        }
                      },
                    )
                  ],
                );
              }
          );
        },
        codeAutoRetrievalTimeout: null
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kirayedar',
          style: TextStyle(color: Colors.red[900],),),

        backgroundColor: Colors.white,
        // toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Mobile Number",
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
              controller: _phoneController,
            ),

            Expanded(

              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ButtonTheme(
                  height: 30,
                  minWidth: double.infinity,
                  child: RaisedButton(

                    child: Text('Get Pin',
                      style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      final phone = _phoneController.text.trim();

                      loginUser(phone, context);

                    },
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