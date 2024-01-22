import 'package:flutter/material.dart';

class Sepration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Welcome To Watch Our Seprate Components.",
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
        backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Column(children: [
            Expanded(
                child: Container(
              color: Colors.pink,
            )),
            Expanded(
                child: Container(
              color: Colors.black,
            )),
            Expanded(
                child: Container(
              color: Colors.deepPurple,
            )),
          ])),
          Expanded(
              child: Column(children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(width: 2, color: Colors.black)),
            )),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    border: Border.all(width: 2, color: Colors.black)),
            )),
            Expanded(
                child: Container(
              color: Colors.grey,
            )),
          ])),
          Expanded(
              child: Column(children: [
            Expanded(child: Container(color: Colors.green)),
            Expanded(
                child: Container(
              color: Colors.brown,
            )),
            Expanded(
                child: Container(
              color: Colors.blueAccent,
            ))
          ])),
        ],
      ),
    );
  }
}
