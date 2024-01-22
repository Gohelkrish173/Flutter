import 'package:flutter/material.dart';

class P4 extends StatelessWidget {
  var outputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: outputController,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 50,
                  wordSpacing: 2,
                  decorationColor: Colors.yellow,
                ),
                cursorColor: Colors.yellow,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 30),
                  labelText: "Enter A Name:",
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.red,
              child: TextButton(
                onPressed: () {
                  print("Name : ${outputController.text.toString()}");

                },
                child: Container(color: Colors.yellow,width: 300,child: Center(child: Text("signup",style: TextStyle(fontSize: 40),))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
