import 'package:application/my_page3.dart';
import 'package:flutter/material.dart';

import 'my_page1.dart';
import 'my_page2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage3(),
    );
  }
}
