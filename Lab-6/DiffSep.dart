import 'package:flutter/material.dart';

class DiffSep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 4,color: Colors.yellow),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              "Welcome To Show Our Different Type Block Sepration",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(width:2 , color: Colors.black)
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        border: Border.all(width: 2,color: Colors.black)
                      ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(width: 2,color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      border: Border.all(width: 2,color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 2, color: Colors.black),
                    ),
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
