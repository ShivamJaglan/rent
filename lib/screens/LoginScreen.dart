import 'package:firebase_auth/firebase_auth.dart';
import 'package:try1/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:try1/screens/HomeScreen2.dart';

class LoginScreen extends StatelessWidget {
  final _phoneController = TextEditingController();

  final _codeController = TextEditingController();

  Future<bool> loginUser(String phone, BuildContext context) async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async{
          Navigator.of(context).pop();

          AuthResult result = await _auth.signInWithCredential(credential);

          FirebaseUser user = result.user;

          if(user != null){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreen2(user: user,)
            ));
          }else{
            print("Error");
          }

          //This callback would gets called when verification is done auto maticlly
        },
        verificationFailed: (AuthException exception){
          print(exception);
        },
        codeSent: (String verificationId, [int forceResendingToken]){
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Give the code?"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: _codeController,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Confirm"),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () async{
                        final code = _codeController.text.trim();
                        AuthCredential credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: code);

                        AuthResult result = await _auth.signInWithCredential(credential);

                        FirebaseUser user = result.user;

                        if(user != null){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => HomeScreen2(user: user,)
                          ));
                        }else{
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Kirayedar',
            style: TextStyle(color: Colors.red[900],),),

          backgroundColor: Colors.white,
          // toolbarHeight: 70,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.grey[300],
        body: Container(

          child: SingleChildScrollView(

            child: Container(
              padding: EdgeInsets.all(32),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height:150),
                    Text("Login", style: TextStyle(color: Colors.indigo[900], fontSize: 36, fontWeight: FontWeight.w500),),

                    SizedBox(height: 16,),

                    TextFormField(
                      // keyboardType: TextInputType,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your phone number",
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
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //       enabledBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.all(Radius.circular(30)),
                    //           borderSide: BorderSide(color: Colors.grey[200])
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.all(Radius.circular(30)),
                    //           borderSide: BorderSide(color: Colors.grey[300])
                    //       ),
                    //       filled: true,
                    //       fillColor: Colors.grey[100],
                    //       hintText: "Mobile Number"
                    //
                    //   ),
                    //   controller: _phoneController,
                    // ),

                    SizedBox(height: 16,),


                    Container(
                      width: double.infinity,
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: RaisedButton(
                          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          child: Text("LOGIN"),
                          textColor: Colors.white,
                          padding: EdgeInsets.all(16),
                          onPressed: () {
                            final phone = _phoneController.text.trim();

                            loginUser(phone, context);

                          },
                          color: Colors.indigo[900],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}