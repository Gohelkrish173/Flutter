import 'package:flutter/material.dart';

class P1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 50,
              color: Colors.indigo,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
