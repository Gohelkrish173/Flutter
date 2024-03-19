import 'dart:convert';
import 'package:demo/model/Food_All_Crud.dart';
import 'package:demo/model/Food_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Add_Food extends StatefulWidget {
  Map<String, Object?>? map;

  Add_Food(map) {
    this.map = map;
  }

  @override
  State<Add_Food> createState() => _Add_FoodState();
}

class _Add_FoodState extends State<Add_Food> {

  TextEditingController id = TextEditingController();
  TextEditingController foodname = TextEditingController();
  TextEditingController price = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    id.text = widget.map == null ? '' : widget.map!["id"].toString();
    foodname.text =
    widget.map == null ? '' : widget.map!["foodname"].toString();
    price.text = widget.map == null ? '' : widget.map!["price"].toString();
  }

  Widget TxtControler(controler,
      hinttxt,) {
    return TextFormField(
      controller: controler,
      decoration: InputDecoration(
        hintText: hinttxt,
        hintStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.amber),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.cyanAccent),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              TxtControler(id, "Enter a food id"),
              SizedBox(
                height: 10,
              ),
              TxtControler(foodname, "Enter A Food Name"),
              SizedBox(
                height: 10,
              ),
              TxtControler(price, "Enter A Food price"),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Map<String, dynamic> map2 = {};
                  map2['id'] = id.text.toString();
                  map2['foodname'] = foodname.text.toString();
                  map2['price'] = price.text.toString();
                  if (widget.map == null) {
                    print("1111111111111111");
                    InsertFood().then((value) {
                      Navigator.of(context).pop();
                    });
                  }
                  else {
                    String id1 = id.text;
                    UpdateFood().then((value) {
                      print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$id");
                      Navigator.of(context).pop();
                    });
                  }
                },
                child: Container(
                  color: Colors.cyan,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'ADD',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Future<void> insertFood() async {
//   Food foodmodel = Food();
//   String foodlink = foodmodel.insertFoodData(id.text.toString(),foodname.text.toString(),price.text.toString());
//   print(foodlink);
//   var res = await http.post(
//     Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Food"),
//     headers: <String,String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: foodlink,
//   );
//   print(res);
// }

  Future<void> InsertFood() async {
    Food food = Food();
    food.id = int.parse(id.text);
    food.foodname = foodname.text;
    food.price = double.parse(price.text);
    await FoodCrud().insertFood(food.toMap());
  }

  Future<void> UpdateFood() async {
    Food food = Food();
    food.id = int.parse(id.text);
    food.foodname = foodname.text;
    food.price = double.parse(price.text);
    await FoodCrud().updateFood(food.toMap(), id.text);
  }
}