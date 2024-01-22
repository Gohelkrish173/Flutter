import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demo/Furniture%20Screens/Screen1.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: S(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class S extends StatefulWidget {
  const S({super.key});

  @override
  State<S> createState() => _SState();
}

class _SState extends State<S> {
  Widget name(n) {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 2,
          fontFamily: 'Bobbers',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText('$n'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[700],
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[400],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "./assets/Images/S.png",
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 50),
                    child: name("Furnichered Chairs App."),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow[300],
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.transparent),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Screen1();
                          },
                        ),
                      );
                    });
                  },
                  child: Icon(
                    Icons.keyboard_double_arrow_right,
                    size: 50,
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
