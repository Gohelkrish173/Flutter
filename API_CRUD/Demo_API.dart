import 'dart:convert';

import 'package:demo/Lacture Practice/API_CRUD/Add_In_API.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';

class Demo_Api extends StatefulWidget {
  @override
  State<Demo_Api> createState() => _Demo_ApiState();
}

class _Demo_ApiState extends State<Demo_Api> {
  List<dynamic>? userList;

  void showDeleteAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alerts!'),
          content: Text('can you delete this data?'),
          actions: [
            TextButton(
                onPressed: () async {
                 http.Response res = await deleleAPIdata(id);
                 if(res.statusCode == 200){
                   Navigator.of(context).pop();
                   setState(() {});
                 }
                },
                child: Text('Ok')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('cancel')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        color: Colors.blue,
        child: InkWell(
            onTap: () {
              setState(() {
                Map map = {};
                map["name"] = null;
                map["id"] = null;
                map["avatar"] = null;

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return add_in_api(
                    map: map,
                  );
                })).then(
                  (value) {
                    setState(() {});
                  },
                );
              });
            },
            child: Icon(Icons.add)),
      ),
      body: FutureBuilder<http.Response>(
        future: getAPIdata(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // userList = jsonDecode(snapshot.data!.toString());
            return ListView.builder(
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Text(jsonDecode(snapshot.data!.body.toString())[index]
                                ['name'] ??
                            ''),
                        Text(jsonDecode(snapshot.data!.body.toString())[index]
                                ['id'] ??
                            ''),
                        Image.network(
                            jsonDecode(snapshot.data!.body.toString())[index]
                                    ['avatar'] ??
                                ''),
                        SizedBox(height: 10,),
                        InkWell(
                            onTap: () {
                              showDeleteAlert(jsonDecode(
                                  snapshot.data!.body.toString())[index]['id']);
                            },
                            child: Icon(
                              Icons.delete,
                              size: 30,
                            )),
                        SizedBox(height: 10,),
                        InkWell(onTap: () {
                          setState(() {
                            Map map2 = {};
                            map2['name'] = jsonDecode(snapshot.data!.body.toString())[index]['name'];
                            map2['id'] = jsonDecode(snapshot.data!.body.toString())[index]['id'];
                            map2['avatar'] = jsonDecode(snapshot.data!.body.toString())[index]['avatar'];

                            Navigator.of(context).push(MaterialPageRoute(builder: (context){return add_in_api(map: map2,);}));
                          });
                        },child: Icon(Icons.edit,size: 30,))
                      ],
                    ),
                  ),
                );
              },
              itemCount: jsonDecode(snapshot.data!.body.toString()).length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<http.Response> getAPIdata() async {
    var responce = await http
        .get(Uri.parse('https://64fca63a605a026163aeb538.mockapi.io/demo'));

    // Map map = {};
    // map["name"] = "krish";
    // map["id"] = 108;
    // map["avatar"] = "https://i.pinimg.com/564x/8b/db/08/8bdb08ce20c5cb5dd0bb005abdb65149.jpg";

    // var reasponce1 = await http.post(Uri.parse('https://64fca63a605a026163aeb538.mockapi.io/demo'),body: map);
    // print('responce1 : $reasponce1');
    return responce;
  }

  Future<http.Response> deleleAPIdata(id) async {
    var responce = await http.delete(
        Uri.parse('https://64fca63a605a026163aeb538.mockapi.io/demo/$id'));
    return responce;
  }
}
