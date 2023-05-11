import 'package:flutter/material.dart';

class MyPage1 extends StatefulWidget {
  const MyPage1({super.key});

  @override
  State<MyPage1> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Width : ' + MediaQuery.of(context).size.width.toString()),
            Text('Height : ' + MediaQuery.of(context).size.height.toString()),
            Text('AspectRatio : ' + MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
            Text('Orientation : ' + MediaQuery.of(context).orientation.toString()),
          ],
        ),
      ),
    );
  }
}
