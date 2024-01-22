
import 'package:flutter/material.dart';

class Vertical extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Welcome To MyPage."),
          backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container(color: Colors.orange,)),
          Expanded(child: Container(color:Colors.white)),
          Expanded(child: Container(color:Colors.green)),
        ],
      ),
    );
  }

}