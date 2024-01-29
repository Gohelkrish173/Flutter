
import 'package:flutter/material.dart';

class DSC2 extends StatefulWidget {
  @override
  State<DSC2> createState() => _DSC2State();
}

class _DSC2State extends State<DSC2> {

  Widget Chart(dcolor, prize, name, weblink,{Icolor = null}) {
    return Card(
      color: dcolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 30,
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  border: BorderDirectional(
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Text(
                  "M",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "****8765",
                style: TextStyle(color: Colors.grey[300], fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    prize,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[300],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Text(""),
            ],
          ),
          SizedBox(height: 120),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                weblink,
                height: 80,
                width: 80,
                color: Icolor,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Exp. Date",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "12/23",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                './assets/Images/p1.avif',
                width: 40,
                height: 40,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Melta-Bank",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.view_compact_sharp,
              color: Colors.indigo,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: double.infinity,
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balance",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        color: Colors.indigo[800],
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Your Balance",
                                    style: TextStyle(
                                        color: Colors.grey[200],
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "\$ 102321",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Card(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                      left: 2.5,
                                      right: 2.5),
                                  child: Text(
                                    "+20%",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Text(
                        "My Cards",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 250,
                              height: 500,
                              child: Chart(
                                  Colors.indigo[800],
                                  "34760",
                                  "Platinum Plus",
                                  "https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-mastercard-logo-png-vector-download-19.png"),
                            ),
                            Container(
                              width: 250,
                              height: 500,
                              child: Chart(
                                  Colors.cyan[300],
                                  "102321",
                                  "Sky Pass Gold",
                                  "https://www.freepnglogos.com/uploads/visa-inc-logo-transparent-png-19.png",
                                  Icolor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 2,child: Text(""),),
            ],
          ),
        ),
      ),
    );
  }
}
