import 'package:flutter/material.dart';

class fTab extends StatefulWidget {
  const fTab({ Key? key }) : super(key: key);

  @override
  State<fTab> createState() => _fTabState();
}

class _fTabState extends State<fTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[200],
      child: Center(child: Text('1ST  T A B',style: TextStyle(fontSize: 35),)),
    );
  }
}