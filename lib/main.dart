// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'TextBoxes.dart';
import 'TextBoxesButtons.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel Diary'),
        ),
        body: Column(
          children: [
            LoginPage(),
            loginButtons()
        ],
        ),
      ),
    );
  }
}
