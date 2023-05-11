import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snack Bar",
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Show me'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Hello',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[300]),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 10000),
            ),
          );
          Fluttertoast.showToast(
            msg: 'Flutter',
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.redAccent,
            fontSize: 20.0,
            textColor: Colors.white,
            toastLength: Toast.LENGTH_LONG,
          );
          // flutterToast();
        },
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'Flutter',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_LONG,
  );
}
