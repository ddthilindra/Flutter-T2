import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({ Key? key }) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'Message',
          style: TextStyle(fontSize: 50),
        ),
      );
  }
}