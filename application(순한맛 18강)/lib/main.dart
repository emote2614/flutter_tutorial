import 'package:flutter/material.dart';

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
          backgroundColor: Colors.red,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text(
                  'Show me',
                ),
                onPressed: () {
                  ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                    content: Text('New Snack Bar'),
                    action: SnackBarAction(
                      label: 'plus',
                      onPressed: () {},
                    ),
                  ));
                },
              ),
            );
          },
        ));
  }
}
