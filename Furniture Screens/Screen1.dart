import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sc1(),
    );
  }
}

class Sc1 extends StatefulWidget {
  const Sc1({super.key});

  @override
  State<Sc1> createState() => _Sc1State();
}

class _Sc1State extends State<Sc1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          color: Colors.grey[350],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 15),
                margin: EdgeInsets.only(bottom: 25),
                width: double.infinity,
                // color: Colors.pink,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.playlist_add_check_rounded, size: 35),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.account_box_rounded, size: 35),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 25),
                // color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 3, color: Colors.blueGrey)),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                height: 30,
                                padding: EdgeInsets.only(left: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "search",
                                    hintStyle: TextStyle(fontSize: 13),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.shopping_cart_checkout_outlined,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                width: double.infinity,
                height: 425,
                // color: Colors.green,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Explore",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 250,
                            child: Card(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: ClipRRect(
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            "./assets/Images/p1.avif",
                                            width: 1000,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            right: 5,
                                            top: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              padding: EdgeInsets.all(5),
                                              child: Icon(
                                                Icons.favorite,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Item Name",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Text(
                                          "Leading and Affortable Furniture manufacture in Bangladesh.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            child: Text(
                                              "\$220.00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.add_circle,
                                            size: 32,
                                          ),
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 250,
                            child: Card(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: ClipRRect(
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            "./assets/Images/p1.avif",
                                            width: 1000,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            right: 5,
                                            top: 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              padding: EdgeInsets.all(5),
                                              child: Icon(
                                                Icons.favorite,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Item Name",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Text(
                                          "Leading and Affortable Furniture manufacture in Bangladesh.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            child: Text(
                                              "\$220.00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.add_circle,
                                            size: 32,
                                          ),
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                // color: Colors.pink,
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      alignment: Alignment.centerLeft,
                      // color: Colors.redAccent,
                      child: Text(
                        "Best Selling",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Card(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "./assets/Images/p1.avif",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Minimal Chair",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text(
                                    "Enjoy Stylish and ergonomic work seating for every budget.",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "\$220.00",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return Screen2();
                                                  },
                                                ),
                                              );
                                            },
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              padding:
                                                  EdgeInsets.only(right: 5),
                                              child: Icon(
                                                  Icons
                                                      .arrow_circle_right_rounded,
                                                  size: 30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
