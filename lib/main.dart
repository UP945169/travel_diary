import 'package:flutter/material.dart';
import 'login_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Travel Diary'),
        ),
        body: LoginPage(),
      ),
    );
  }
}
