import 'package:bottomnavbar/pages/account.dart';
import 'package:bottomnavbar/pages/home.dart';
import 'package:bottomnavbar/pages/messages.dart';
import 'package:bottomnavbar/pages/setings.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int _selectedIndex=0;
  void _navigatorBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  // final List<Widget> _pages=[
  //   Center(
  //       child: Text(
  //         'Home',
  //         style: TextStyle(fontSize: 50),
  //       ),
  //     ),
  //   Center(
  //       child: Text(
  //         'Message',
  //         style: TextStyle(fontSize: 50),
  //       ),
  //     ),
  //   Center(
  //       child: Text(
  //         'Settings',
  //         style: TextStyle(fontSize: 50),
  //       ),
  //     ),
  //   Center(
  //       child: Text(
  //         'Profile',
  //         style: TextStyle(fontSize: 50),
  //       ),
  //     ),
  // ];

  final List<Widget> _pages=[
    Home(),
    Messages(),
    Settings(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
      ]),
    );
  }
}
