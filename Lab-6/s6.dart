import 'package:flutter/material.dart';

class s6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  child: S(Colors.grey, 2),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    child: S(
                                      Colors.brown,
                                    ),
                                  ),
                                  Container(
                                    child: S(
                                      Colors.yellow,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    child: S(
                                      Colors.pink,
                                    ),
                                  ),
                                  Container(
                                    child: S(
                                      Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(child: S(Colors.yellow))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  child: S(
                    Colors.green,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: S(
                                Colors.amber,
                              ),
                            ),
                            Container(
                              child: S(
                                Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: S(
                                Colors.yellow,
                              ),
                            ),
                            Container(
                              child: S(
                                Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: S(
                    Colors.brown,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  child: S(
                    Colors.pink,
                  ),
                ),
                Container(
                  child: S(
                    Colors.green,
                  ),
                ),
                Container(
                  child: S(
                    Colors.grey,
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
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    child: S(
                                      Colors.yellow,
                                    ),
                                  ),
                                  Container(
                                    child: S(
                                      Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    child: S(
                                      Colors.blue,
                                    ),
                                  ),
                                  Container(
                                    child: S(
                                      Colors.brown,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: S(
                          Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: S(
                    Colors.black,
                  ),
                ),
                Container(
                  child: S(
                    Colors.pink,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: S(Colors.blue, 1),
                            ),
                            Container(
                              child: S(Colors.black, 2),
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
                                    child: Row(
                                      children: [
                                        Container(
                                          child: S(
                                            Colors.yellow,
                                          ),
                                        ),
                                        Container(
                                          child: S(
                                            Colors.amber,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: S(
                                            Colors.pink,
                                          ),
                                        ),
                                        Container(
                                          child: S(
                                            Colors.black87,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: S(Colors.green, 2),
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

  Widget S(scolor, [sflex = 1]) {
    return Expanded(child: Container(color: scolor), flex: sflex);
  }
}
