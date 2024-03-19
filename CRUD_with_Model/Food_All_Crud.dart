import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Food_model.dart';

class FoodCrud {
  Future<List> getFoodData() async {
    var res = await http
        .get(Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Food"));
    List food_list = jsonDecode(res.body);
    // List foodlist = [];
    // for(int i=0;i<food_list.length;i++){
    //   Food model = Food();
    //   model.id = int.parse(food_list[i]["id"].toString());
    //   model.foodname = food_list[i]["foodname"].toString();
    //   model.price = double.parse(food_list[i]["price"].toString());
    //   foodlist.add(model);
    // }
    // print("@@@@@@@@@@@@@@@@@@@@@@@$foodlist");
    return food_list;
  }

  Future<void> deleteFood(String id) async {
    var res = await http.delete(
        Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Food/" + id));
    print(res);
  }

  Future<void> insertFood(Map<String,dynamic>map) async {
    var res = await http.post(
      Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Food"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(map),
    );
  }

  Future<void> updateFood(Map<String,dynamic> map,String id) async {
    var res = await http.put(
      Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Food/" + id),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode(map),
    );
  }

}
