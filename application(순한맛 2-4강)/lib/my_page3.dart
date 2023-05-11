import 'package:application/desktop_body.dart';
import 'package:application/mobile_body.dart';
import 'package:application/responsive_layout.dart';
import 'package:flutter/material.dart';

class MyPage3 extends StatefulWidget {
  const MyPage3({super.key});

  @override
  State<MyPage3> createState() => _MyPage3State();
}

class _MyPage3State extends State<MyPage3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
