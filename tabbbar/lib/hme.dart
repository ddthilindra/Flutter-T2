import 'package:flutter/material.dart';
import 'package:tabbbar/Tabs/fTab.dart';
import 'package:tabbbar/Tabs/sTab.dart';
import 'package:tabbbar/Tabs/thTab.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("T A B  B A R"),
        ),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                ),
              ),
            ]),


            Expanded(
              child: TabBarView(children: [
                // //1st tab
                // Container(
                //   color: Colors.green,
                //   child: Center(child: Text('1ST  T A B')),
                // ),
                // //2nd tab
                // Container(
                //   color: Colors.blue,
                //   child: Center(child: Text('2ND  T A B')),
                // ),
                // //3rd tab
                // Container(
                //   color: Colors.amber,
                //   child: Center(child: Text('3RD  T A B')),
                // ),

                // //1st tab
                fTab(),
                // //2nd tab
                sTab(),
                // //3rd tab
                thTab()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
