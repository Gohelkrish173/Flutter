import "dart:convert";
import 'package:demo/model/Food_All_Crud.dart';
import 'package:demo/model/Food_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:demo/Food_Add_Detail.dart';

class Food_Detail extends StatefulWidget {
  @override
  State<Food_Detail> createState() => _Food_DetailState();
}

class _Food_DetailState extends State<Food_Detail> {
  Widget TextCard(txt) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.cyan),
    );
  }

  FoodCrud foodCrud = FoodCrud();

  Widget FoodCard(id, foodname, price) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextCard(id),
          TextCard(foodname),
          TextCard(price.toString()),
          InkWell(
              onTap: () {
                foodCrud.deleteFood(id.toString()).then((value) {
                  setState(() {});
                });
              },
              child: Icon(
                Icons.delete,
                size: 20,
                color: Colors.red,
              )),
          InkWell(
            onTap: () {
              Map<String, dynamic> map1 = {};
              map1['id'] = id.toString();
              map1['foodname'] = foodname.toString();
              map1['price'] = price.toString();

              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Add_Food(map1);
              })).then(
                (value) {
                  setState(() {});
                },
              );
            },
            child: Icon(
              Icons.edit,
              size: 20,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List>(
        future: FoodCrud().getFoodData(),
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  // height: 850,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FoodCard(
                        snapshot.data![index]["id"],
                        snapshot.data![index]["foodname"],
                        snapshot.data![index]["price"],
                      )
                    ],
                  ),
                );
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Add_Food(null);
          })).then((value) {
            setState(() {});
          });
        },
        child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.orange,
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.cyan,
            )),
      ),
    );
  }
//   Future<List> getFoodData() async {
//     var res = await http
//         .get(Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Food"));
//     List food_list = jsonDecode(res.body);
//     return food_list;
//   }
}
