import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Blue",
                        style: TextStyle(fontSize: 25, color: Colors.amber),
                      ),
                    ),
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Green",
                        style: TextStyle(fontSize: 25, color: Colors.amber),
                      ),
                    ),
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Grey",
                        style: TextStyle(fontSize: 25, color: Colors.amber),
                      ),
                    ),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Pink",
                        style: TextStyle(fontSize: 25, color: Colors.amber),
                      ),
                    ),
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Purple",
                        style: TextStyle(fontSize: 25, color: Colors.amber),
                      ),
                    ),
                    color: Colors.purple,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Red",
                        style: TextStyle(fontSize: 25, color: Colors.amber),
                      ),
                    ),
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Yellow",
                        style: TextStyle(fontSize: 25, color: Colors.pink),
                      ),
                    ),
                    color: Colors.yellow,
                  ),
                ),
                Expanded(child: Container())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
