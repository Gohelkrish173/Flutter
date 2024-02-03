import 'package:demo/Furniture%20Screens/Screen2.dart';
import 'package:flutter/material.dart';

class S3 extends StatefulWidget {
  const S3({super.key});

  @override
  State<S3> createState() => _S3State();
}

class _S3State extends State<S3> {
  bool isChecked = false;
  double delivery = 0.0;
  dynamic button = Icons.check_box_outline_blank_outlined;
  String PName = "";
  double Rate = 0;
  int count = 0;
  List<dynamic> li = [220.00, 299.00, 150.00,];
  int sel = 1;
  double total = 0.0;
  double GTotal = 0.0;
  List<dynamic> qyt = [1, 1, 1,];

  Widget boxIcon(dicon) {
    return Container(
      padding: EdgeInsets.only(top: 3, bottom: 3),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        dicon,
        size: 25,
        color: Colors.white,
      ),
    );
  }

  List<dynamic> flagList = [false, false, false,false];

  Widget incdnc(index, flag) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  if (qyt[index] > 1 && flag == true) {
                    qyt[index] = qyt[index] - 1;
                    GTotal = GTotal - li[index] - 40.0;
                    delivery = delivery - 40.0;
                    total = total - li[index];
                  }
                });
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "-",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
            ),
          ), // decrease end
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "${qyt[index]}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ), // selected
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                setState(() {
                  if (flag) {
                    qyt[index] = qyt[index] + 1;
                    total = total + li[index];
                    delivery = delivery + 40.0;
                    GTotal = total + delivery;
                  }
                });
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "+",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itembox(PName, Rate, index, flag, y) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            onTap: () => setState(() {
              if (flagList[index]) {
                GTotal =
                    GTotal - ((li[index] * qyt[index]) + (qyt[index] * 40.0));
                delivery = delivery - (40.0 * qyt[index]);
                total = total - (li[index] * qyt[index]);
                flagList[index] = false;
                print("Qyt : $qyt");
                print("li : $li");
                print("flagList : $flagList");
              } else {
                total = total + (li[index] * qyt[index]);
                delivery = delivery + (40.0 * qyt[index]);
                GTotal =
                    GTotal + (qyt[index] * li[index]) + (qyt[index] * 40.0);
                flagList[index] = true;
              }
            }),
            child: flagList[index]
                ? Icon(
                    Icons.check_box_outlined,
                    color: Colors.red,
                  )
                : Icon(Icons.check_box_outline_blank_outlined),
          ), // checkbox end
        ),
        Expanded(
          flex: 10,
          child: Container(
            margin: EdgeInsets.only(left: 3),
            width: double.infinity,
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "./assets/Images/$y",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "$PName",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ),
                        Text(
                          "Enjoy stylish and orgonomic work seating for every budget.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "\$$Rate",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.red),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: incdnc(index, flagList[index]),
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
        ),
      ],
    );
  }

  Widget kv(Name, X, {weight = FontWeight.w500, botom = 10.0, s = 15.0}) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(bottom: botom),
            child: Text(
              "$Name",
              style: TextStyle(fontSize: s, fontWeight: weight),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(bottom: botom),
            child: Text(
              "\$$X",
              style: TextStyle(
                fontSize: s,
                fontWeight: weight,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: double.infinity,
          color: Colors.grey[350],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: boxIcon(Icons.arrow_back_outlined),
                      ),
                    ), //Icon1
                    Expanded(
                      flex: 7,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Card",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                      ),
                    ), //Card
                    Expanded(
                      flex: 1,
                      child: boxIcon(Icons.shopping_cart_checkout_outlined),
                    ), // Icon2
                  ],
                ),
              ), //Title Completed
              Container(
                // color: Colors.pink,
                padding: EdgeInsets.only(left: 10, right: 15),
                height: 450,
                width: double.infinity,
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child:
                          itembox("Minimal Chair", 220.00, 0, false, "p1.avif"),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child:
                          itembox("Modern Chair", 299.00, 1, false, "p2.avif"),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child:
                          itembox("Classic Chair", 150.00, 2, false, "p3.avif"),
                    ),
                  ],
                ),
              ), // List View Item Completed
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(right: 15, left: 15, top: 40, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      kv("Selected Item", total, botom: 5.0),
                      Container(
                        child: kv("Delivery Fee", delivery, botom: 15.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 2, color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: kv("Subtotal", GTotal,
                            weight: FontWeight.w900, s: 20.0, botom: 25.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        alignment: Alignment.center,
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // Part - I
    );
  }
}
