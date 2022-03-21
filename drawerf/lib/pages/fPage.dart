import 'package:flutter/material.dart';

class fPage extends StatefulWidget {
  const fPage({ Key? key }) : super(key: key);

  @override
  State<fPage> createState() => _fPageState();
}

class _fPageState extends State<fPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(child: Text('F I R S T   P A G E'),),
    );
  }
}