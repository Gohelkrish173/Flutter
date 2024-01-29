import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page();
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  var _outputcontrol = TextEditingController();
  String _Output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _outputcontrol,
              style: TextStyle(fontSize: 30, color: Colors.green),
              decoration: InputDecoration(
                labelText: "Enter Name",
                labelStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 10, color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 5,
                    color: Colors.red,
                  ),
                ),
              ),
              cursorColor: Colors.green,
              cursorWidth: 10,
              cursorHeight: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _Output = _outputcontrol.text.toString();
                        });
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                "$_Output",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
