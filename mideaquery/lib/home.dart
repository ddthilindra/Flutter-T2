import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: Column(
          children: [
            Text("Height: "+MediaQuery.of(context).size.height.toString()),
            Text("Width: "+MediaQuery.of(context).size.height.toString()),
          ],
        ),
      ),
    );
  }
}