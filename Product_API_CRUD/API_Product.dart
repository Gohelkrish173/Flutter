import 'dart:convert';

import 'package:demo/Lacture%20Practice/Product_API_CRUD/ADD_Product_In_API.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API_Product extends StatefulWidget {
  @override
  State<API_Product> createState() => _API_ProductState();
}

class _API_ProductState extends State<API_Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getProduct(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "ProductName : ${snapshot.data![index]["productname"]}",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        Text(
                          "Amount : ${snapshot.data![index]["price"].toString()}",
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                        Text(
                          "Product_ID : ${snapshot.data![index]["id"].toString()}",
                          style: TextStyle(color: Colors.pink, fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {
                            deleteProduct(snapshot.data![index]["id"].toString())
                                .then((value) {
                              setState(() {});
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            size: 25,
                            color: Colors.red,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              Map map2 = {};
                              map2["productname"] =
                                  snapshot.data![index]["productname"];
                              map2["price"] = snapshot.data![index]["price"];
                              map2["id"] = snapshot.data![index]["id"];

                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return ADD_Product(
                                  map: map2,
                                );
                              }));
                            });
                          },
                          icon: Icon(
                            Icons.edit,
                            size: 25,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: InkWell(
          onTap: () {
            setState(() {
              Map map1 = {};
              map1["productname"] = null;
              map1["price"] = null;
              map1["id"] = null;

              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ADD_Product();
                }),
              ).then((value) {
                setState(() {});
              });
            });
          },
          child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.red,
              child: Icon(
                Icons.add,
                color: Colors.blue,
                size: 40,
              ))),
    );
  }
}

Future<List> getProduct() async {
  var responce = await http
      .get(Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Product"));
  print(responce.body);
  return jsonDecode(responce.body);
}

Future<void> deleteProduct(id) async {
  var responce = await http.delete(
      Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Product/$id"));
  print(responce);
}
