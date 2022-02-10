// ignore_for_file: use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_diary/mapAndMainScreen.dart';
import 'package:travel_diary/registerPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//rewriting to allow verfication
//uses keys to keep track of the state and verification
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //create a boolean for obsureText because stupid TEXTFIELDFORM DOESN'T FUCKING HAVE OBSURE TEXT :(
  
  bool obsureFuckingText = true;

  //firebase Cloud
  final _auth = FirebaseAuth.instance;

  //creating a key to allow validation and is created globably
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email address',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please enter some text';
                }
                //REGEX PATTERN
                
                const pattern = r'[^@\t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+';
                final regExp = RegExp(pattern);

                if (!regExp.hasMatch(value)){
                  return 'Please enter a correct email address';
                }
                return null;
                },
              ),
            ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please enter some text';
                }
                RegExp regexPassword = new RegExp(r'^.{6,}$');
                if(!regexPassword.hasMatch(value)){
                  return 'Please enter a password that has 6 characers';
                }
                return null;
              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ElevatedButton(
                onPressed: (){
                  //this is where login in to firebase function will go
                }, 
                // ignore: prefer_const_constructors
                child: Text('Submit'),
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton.icon(
              icon: const ImageIcon(
                  AssetImage(
                      "assets/images/google_logo.png"
                  )
              ),
              label: const Text("Sign In with Google"),
              onPressed: (){},
            ),
          ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => registerPage()
                      ),
                    );
                  },
                  child: Text('Register'),
                )
            ),
        ],
      )
    );
  }
}

//login function to ask firebase to login

void signIn(String email, String password) async {
  if(_)
}
