import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog( //CupertinoAlertDialog for apple
          backgroundColor: Colors.blue[100],
            title: Text("Title"),
            content: Text("Content, More info"),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text("OK"),
              ),
              MaterialButton(
                onPressed: () {Navigator.pop(context);},
                child: Text("Cancel"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: MaterialButton(
          onPressed: _showDialog,
          color: Colors.deepPurple[100],
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'SHOW DIALOG',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
