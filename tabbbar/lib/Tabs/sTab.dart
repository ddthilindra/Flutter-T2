import 'package:flutter/material.dart';

class sTab extends StatefulWidget {
  const sTab({ Key? key }) : super(key: key);

  @override
  State<sTab> createState() => _sTabState();
}

class _sTabState extends State<sTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: Center(child: Text('2ND  T A B',style: TextStyle(fontSize: 35),)),
    );
  }
}