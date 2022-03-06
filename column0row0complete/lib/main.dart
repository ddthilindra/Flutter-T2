import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('Col Row')),
          body: Column(
            //####################### Creating single column devide into 3 row
            children: [
              Expanded(
                  //####################### Row behind the column
                  flex: 2,
                  child: Container(
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text(
                      "Row 1",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        //####################### Creating row and devide into 2 column
                        children: [
                          Text(
                            "Row 2",
                            style: TextStyle(),
                          ),
                          Expanded(
                              //####################### Coluumn behind the row
                              //flex: 1,
                              child: Container(
                            color: Colors.red,
                            alignment: Alignment.center,
                            child: Text(
                              "Column 1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          )),
                          Expanded(
                              //flex: 1,
                              child: Column(
                            //####################### Creating single column devide into 2 row
                            children: [
                              Expanded(
                                  child: Container(
                                color: Colors.lightBlue,
                                alignment: Alignment.center,
                                child: Text(
                                  "Row 1",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                color: Colors.blueAccent,
                                alignment: Alignment.center,
                                child: Text(
                                  "Row 2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                              )),
                            ],
                          )),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(
                      "Row 3",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  )),
            ],
          ),
        ));
  }
}
