import "dart:io";

import "package:flutter/material.dart";
import '../Lab-6/s1.dart';
import '../Lab-6/s2.dart';
import '../Lab-6/s3.dart';

class Bottom_NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BotomNavi(),
    );
  }
}

class BotomNavi extends StatefulWidget {
  const BotomNavi({super.key});

  @override
  State<BotomNavi> createState() => _BotomNaviState();
}

class _BotomNaviState extends State<BotomNavi> {
  int _setIndex = 0;

  void _onTapButton(int index) {
    setState(
          () {
        _setIndex = index;
      },
    );
  }

  List<Widget> li = <Widget>[
    s1(),
    s2(),
    s3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Demo OF Bottom Navigator Bar:- ", style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.amber,),),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(child: li.elementAt(_setIndex))),
            BottomNavigationBar(
              // backgroundColor: Colors.black,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.circle_rounded),label: "Screen1"),
                BottomNavigationBarItem(icon: Icon(Icons.circle_rounded),label: "Screen2"),
                BottomNavigationBarItem(icon: Icon(Icons.circle_rounded),label: "Screen3"),
              ],
              currentIndex: _setIndex,
              onTap: _onTapButton,
            ),
          ],
        ),
      ),
    );
  }
}
