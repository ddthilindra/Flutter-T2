import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  double boxheight=100;
  double boxwidth=100;
  var boxcolor=Colors.deepPurple;

  void _expandBox(){
    setState(() {
      boxwidth=300;
      boxheight=300;
    });
  }

  void _changeBoxColor(){
    setState(() {
      boxcolor=Colors.pink;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBoxColor,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            height: boxheight,
            width: boxwidth,
            color: boxcolor,
          ),
        ),
      ),
    );
  }
}