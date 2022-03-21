import 'package:flutter/material.dart';

class SPage extends StatefulWidget {
  const SPage({ Key? key }) : super(key: key);

  @override
  State<SPage> createState() => _SPageState();
}

class _SPageState extends State<SPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.green,
      body: Center(child: Text('F I R S T   P A G E'),),
    );
  }
}