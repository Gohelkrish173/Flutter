import 'package:demo/Furniture%20Screens/Screen1.dart';
import 'package:demo/Furniture%20Screens/Screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Sc2 extends StatefulWidget {
  const Sc2({super.key});

  @override
  State<Sc2> createState() => _Sc2State();
}

class _Sc2State extends State<Sc2> {
  double rating = 0;

  dynamic borColor1 = Colors.pink;
  dynamic borColor2 = Colors.transparent;
  dynamic borColor3 = Colors.transparent;

  bool flag = false;

  Widget Coption() {
    return Row(
      children: [
        InkWell(
          onTap: () => setState(() {
            borColor1 = Colors.pink;
            borColor2 = Colors.transparent;
            borColor3 = Colors.transparent;
          }),
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              // color: Colors.black,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: borColor1),
            ),
            child: dotColor(Colors.pink),
          ),
        ),
        InkWell(
          onTap: () => setState(() {
            borColor1 = Colors.transparent;
            borColor2 = Colors.blue;
            borColor3 = Colors.transparent;
          }),
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              // color: Colors.black,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: borColor2,
              ),
            ),
            child: dotColor(Colors.blue),
          ),
        ),
        InkWell(
          onTap: () => setState(() {
            borColor1 = Colors.transparent;
            borColor2 = Colors.transparent;
            borColor3 = Colors.black;
          }),
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              // color: Colors.black,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: borColor3),
            ),
            child: dotColor(Colors.black),
          ),
        ),
      ],
    );
  }

  Widget dotColor(dcolor) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: dcolor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // main Container Start
          width: double.infinity,
          height: 790,
          color: Colors.grey[350],
          child: Column(
            children: [
              Container(
                // Stack-Container Starting
                height: 450,
                // color: Colors.white,
                child: Stack(
                  // Stack StaringI
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                      ),
                      child: Image.asset(
                        "./assets/Images/p2.avif",
                        fit: BoxFit.cover,
                        height: 425,
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      top: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return S3();
                                },
                              ),
                            );
                          },
                          child: Icon(
                            Icons.shopping_cart_checkout_outlined,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 170,
                      child: Text(
                        "Product",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      top: 406,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              if(flag == false){
                                flag = true;
                              }
                              else{
                                flag = false;
                              }
                            });
                          },
                          child: flag ? Icon(
                            Icons.favorite,
                            size: 25,
                            color: Colors.blue,
                          ) : Icon(
                            Icons.favorite,
                            size: 25,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ), //Stack end
              ), // part-1 ending
              Expanded(
                // part-2 starting
                flex: 6,
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  // color: Colors.red,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        //220-minimal-start-rating starting
                        margin: EdgeInsets.only(bottom: 20),
                        // color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "\$220",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w900),
                            ), // &220
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      "Minimal Chair",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                  ), //Minimal chair
                                  Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: RatingBar.builder(
                                        itemSize: 18,
                                        initialRating: 1,
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (value) => setState(() {
                                          this.rating = value;
                                        }),
                                      ),
                                    ),
                                  ), //Star Rating
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                      rating == 0 ? "1.0" : "$rating",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15),
                                    ),
                                  ), //Rating Number
                                ],
                              ),
                            ), //Minimal-StarRating-RatingNumber
                          ],
                        ),
                      ), //220-minimal-start-rating ending
                      Container(
                        // Color-option starting
                        margin: EdgeInsets.only(bottom: 10),
                        // color: Colors.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Color option",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 7, top: 3),
                                child: Coption()), // Color
                          ],
                        ), // Color-option
                      ), // Color-option ending
                      Container(
                        // Description Start
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              // Decription Text
                              "Description",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text(
                                "Enjoy stylish and ergonomic work seating for every budget from the home office to the open office. Durable, adjustable and build to inspire : make your office comfort area.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            // color: Colors.green,
                          ],
                        ),
                      ), // Description end
                    ],
                  ),
                ),
              ), // Part-2 ending
              Expanded(
                //part-3 start
                flex: 1,
                child: Container(
                  // color: Colors.pink,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        // card button start
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return S3();
                                },
                              ),
                            );
                          },
                          child: Container(
                            // Add card containter start
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                              ),
                            ),
                            child: Text(
                              "+  Add to Card",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // Add card container end
              ), // part-3 end
            ],
          ),
        ),
      ), // main-Container End
    );
  }
}
