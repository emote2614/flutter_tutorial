import 'package:application/ScreenB.dart';
import 'package:application/ScreenC.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Go to Screen B'),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
            ),
            ElevatedButton(
              child: Text('Go to Screen C'),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
            ),
          ],
        ),
      ),
    );
  }
}
