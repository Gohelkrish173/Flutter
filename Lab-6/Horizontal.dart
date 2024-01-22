import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        "Welcome To MyApplication.",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red,
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Expanded(child: Container(color: Colors.orange,)),
        Expanded(child: Container(color: Colors.white,)),
        Expanded(child: Container(color: Colors.green,)),
      ],),
    );
  }
}
