import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //use this controller to get what the user typed
  final _textController = TextEditingController();

  //store user text into a variable
  String userPost='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //display the text
            Expanded(child: Container(
              child: Center(
                child: Text(userPost,style: TextStyle(fontSize: 50),),
              ),
            )),
            //text field
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'What\'s on your mind?',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (() {
                      //clear the textfield
                      _textController.clear();
                    }),
                    icon: Icon(Icons.clear),
                  )),
            ),
            //post button
            MaterialButton(
              onPressed: () {
                //update string varible to get the new use input
                setState(() {
                  userPost=_textController.text;
                });
              },
              color: Colors.blue,
              child: Text(
                'Post',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
