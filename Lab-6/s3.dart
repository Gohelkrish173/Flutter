import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex : 4,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.orange,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.tealAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.indigo,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              flex:1,
                              child: Container(
                                color: Colors.teal,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.tealAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              flex:3,
                              child: Container(
                                color: Colors.purple,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.teal,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.black,
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
                                color: Colors.brown,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.blueAccent,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.teal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.cyan,
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
