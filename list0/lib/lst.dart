import 'package:flutter/material.dart';
import 'package:list0/circle.dart';
import 'package:list0/squre.dart';

class listO extends StatefulWidget {
  const listO({Key? key}) : super(key: key);

  @override
  _listOState createState() => _listOState();
}

class _listOState extends State<listO> {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 120,
          child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MyCircle(
                  child: _stories[index],
                );
              }),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySqure(
                  child: _posts[index],
                );
              }),
        ),
      ],
    ));
  }
}
