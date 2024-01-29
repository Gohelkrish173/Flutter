
import 'package:flutter/material.dart';

import '../../Add.dart';
import 'DScreen2.dart';
import '../../Lab-6/s1.dart';
import '../Email & their List/UserList.dart';

class Dmain extends StatefulWidget{
  @override
  State<Dmain> createState() => _DmainState();
}

class _DmainState extends State<Dmain> {

  int _setIndex = 0;

  void _onTapB(int index){
    setState(() {
      _setIndex = index;
    },
    );
  }

  List<Widget> L= <Widget>[
    DSC2(),
    Add(),
    UL(),
    s1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(child: L.elementAt(_setIndex)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.indigo,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined, color: Colors.grey),
              label: "direction"),
          BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline, color: Colors.grey),
              label: "Messenger"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.grey),
              label: "Settings"),
        ],
        currentIndex: _setIndex,
        onTap: _onTapB,
      ),
    );
  }
}