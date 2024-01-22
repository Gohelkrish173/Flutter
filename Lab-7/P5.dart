import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class P5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var outputController = TextEditingController();
  String _X = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              style: TextStyle(color: Colors.red,fontSize: 30),
              controller: outputController,
              decoration: InputDecoration(
                hintText: "Enter A Name",
                enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 5, color: Colors.red)
                ),
                focusedBorder:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 5, color: Colors.green)
                    ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _X = outputController.text.toString();
                  });
                },
                child: Text("ADD"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "$_X",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellow,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
