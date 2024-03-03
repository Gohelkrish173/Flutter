import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("D E S K T O P"),
      ),
      body: Row(
        children: [
          //First Column
          Expanded(
            child: Column(
              children: [
            
                // youtube Video
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      height: 250,
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
            
                // comment Section & recommended Videos
                Expanded(child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      color: Colors.deepPurple[400],
                    ),
                  );
                },
                  itemCount: 8,
                )),
              ],
            ),
          ),

          //second Column
          Container(
            width: 200,
            color: Colors.deepPurple[300],
            
          ),
        ],
      ),
    );
  }
}
