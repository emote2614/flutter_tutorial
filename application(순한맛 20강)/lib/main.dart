import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TEXT',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Text('Hello'),
          padding: EdgeInsets.all(20),
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 10,
          ),
        ),
      ),
    );
  }
}
