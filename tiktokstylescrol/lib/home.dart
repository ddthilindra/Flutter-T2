import 'package:flutter/material.dart';
import 'package:tiktokstylescrol/posts/post1.dart';
import 'package:tiktokstylescrol/posts/post2.dart';
import 'package:tiktokstylescrol/posts/post3.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          post1(),
          post2(),
          post3()
        ],
      ),
    );
  }
}