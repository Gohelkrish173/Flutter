import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Named Routes Demo",
      initialRoute: '/',
      routes: {
        '/': (context) => DS1(),
        '/second': (context) => DS2(),
      },
    ),
  );
}

class DS1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Page",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Icon(Icons.keyboard_double_arrow_right),
          ),
        ],
      ),
    );
  }
}

class DS2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Page",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_double_arrow_left),
          ),
        ],
      ),
    );
  }
}
