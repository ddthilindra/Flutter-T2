import 'package:flutter/material.dart';
import 'package:mideaquery/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(bodyText2: TextStyle(fontSize: 35))
      ),
      home: home()
    );
  }
}

