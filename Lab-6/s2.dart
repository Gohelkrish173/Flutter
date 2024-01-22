import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.cyan,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.deepOrange,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
