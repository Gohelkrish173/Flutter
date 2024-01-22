import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class s5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  child : getExpandedWidget(Colors.blue,2),
                ),
                Container(
                  child: getExpandedWidget(Colors.teal,1),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  child : getExpandedWidget(Colors.grey,1),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: getExpandedWidget(Colors.brown, 1),
                            ),
                            Container(
                              child: getExpandedWidget(Colors.pink, 1),
                            )
                          ],
                        ),
                      ),
                      Expanded(child: Column(
                        children: [
                          Container(child: getExpandedWidget(Colors.green, 1),),
                          Container(child: getExpandedWidget(Colors.cyan, 1),),
                        ],
                      )),
                    ],
                  ),
                ),
                Container(child: getExpandedWidget(Colors.amber, 1),)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  child: getExpandedWidget(Colors.black,1),
                ),
                Container(
                  child: getExpandedWidget(Colors.blue,1),
                ),
                Container(
                  child: getExpandedWidget(Colors.pinkAccent,1),
                ),
                Container(
                  child: getExpandedWidget(Colors.green,1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: getExpandedWidget(Colors.pink,1),
                            ),
                            Container(
                              child: getExpandedWidget(Colors.deepPurple,1),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: getExpandedWidget(Colors.teal,1),
                                          ),
                                          Container(
                                            child: getExpandedWidget(Colors.black,1),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: getExpandedWidget(Colors.brown,1),
                                        ),
                                        Container(
                                          child: getExpandedWidget(Colors.pink,1),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: getExpandedWidget(Colors.amber,1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: getExpandedWidget(Colors.tealAccent,1),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: getExpandedWidget(Colors.deepPurple,1),
                                        ),
                                        Container(
                                          child: getExpandedWidget(Colors.teal,1),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: getExpandedWidget(Colors.grey,1),
                                        ),
                                        Container(
                                          child: getExpandedWidget(Colors.black,1),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: getExpandedWidget(Colors.tealAccent,1),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: getExpandedWidget(Colors.pink,1),
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
  Widget getExpandedWidget(color,flex){
    return Expanded(flex:flex,child: Container(color: color,));
  }
}

