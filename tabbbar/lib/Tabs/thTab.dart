import 'package:flutter/material.dart';

class thTab extends StatefulWidget {
  const thTab({Key? key}) : super(key: key);

  @override
  State<thTab> createState() => _thTabState();
}

class _thTabState extends State<thTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[200],
      child: Center(child: Text('3RD  T A B',style: TextStyle(fontSize: 35),)),
    );
  }
}
