import 'package:flutter/material.dart';

class s4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.teal,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.amber,
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
                          color: Colors.tealAccent,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.teal,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.orange,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.pink,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.brown,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.amber,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.blueAccent,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.black87,
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
                                color: Colors.tealAccent,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.cyan,
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
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.pinkAccent,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.amber,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              flex:3,
                              child: Container(
                                color: Colors.teal,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.amber,
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
                                color: Colors.pink,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.brown,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.grey,
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
        ],
      ),
    );
  }
}
