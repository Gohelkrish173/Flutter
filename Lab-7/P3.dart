import 'package:flutter/material.dart';

class P3 extends StatelessWidget {

  var NameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(
                cursorColor: Colors.redAccent,
                controller: NameController,
                style: TextStyle(fontSize: 50, color: Colors.brown),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  fillColor: Colors.brown,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                color: Colors.red,
                width: 200,
                height: 100,
                child: TextButton(
                  onPressed: () {
                    print("Name : ${NameController.text.toString()}");
                  },
                  child: Text('SignIn',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.w700),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
