import 'package:flutter/material.dart';

class MyPage2 extends StatefulWidget {
  const MyPage2({super.key});

  @override
  State<MyPage2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyPage2> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: currentWidth < 600 ? Colors.deepPurple[300] : Colors.red,
      body: Center(
        child: Text(currentWidth.toString()),
      ),
    );
  }
}
