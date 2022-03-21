import 'package:drawerf/pages/fPage.dart';
import 'package:drawerf/pages/sPage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple[300]),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                      child: Text(
                'L O G O',
                style: TextStyle(fontSize: 35),
              ))),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 20,
                ),
                title: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>fPage()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 20,
                ),
                title: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SPage()));
                },
              ),
            ],
          ),
        ),
      ),
    endDrawer: Drawer(),
    );
  }
}
