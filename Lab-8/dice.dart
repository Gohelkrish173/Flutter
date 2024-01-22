import 'package:flutter/material.dart';
import 'dart:math';

class dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: D(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class D extends StatefulWidget {
  const D({super.key});

  @override
  State<D> createState() => _DState();
}

class _DState extends State<D> {
  int a = 1;
  String d = "d1";
  String n = "One";
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          a = random.nextInt(7);
                          print(a);
                          if (a == 1) {
                            n = "One";
                            d = "d1";
                          } else if (a == 2) {
                            d = "d2";
                            n = "Two";
                          } else if (a == 3) {
                            d = "d3";
                            n = "Three";
                          } else if (a == 4) {
                            d = "d4";
                            n = "Four";
                          } else if (a == 5) {
                            d = "d5";
                            n = "Five";
                          } else if (a == 6) {
                            d = "d6";
                            n = "Six";
                          }
                        },
                      );
                    },
                    child: Image.asset(
                      "./assets/Images/$d.png",
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Result : ${n}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.yellow
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
