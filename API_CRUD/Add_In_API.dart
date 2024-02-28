import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class add_in_api extends StatefulWidget {
  Map map = {};

  add_in_api({map}) {
    this.map = map;
  }

  @override
  State<add_in_api> createState() => _add_in_apiState();
}

class _add_in_apiState extends State<add_in_api> {
  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController avatar = TextEditingController();

  bool? IU; //insert or update

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name.text = widget.map == null ? '' : widget.map["name"];
    id.text = widget.map == null ? '' : widget.map["id"];
    avatar.text = widget.map == null ? '' : widget.map["avatar"];
    IU = widget.map == null ? true : false;
  }

  Widget inputdata(hint, controler) {
    return TextFormField(
      controller: controler,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 25),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          width: double.infinity,
          height: 850,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                inputdata("name", name),
                inputdata("id", id),
                inputdata("avatar", avatar),
                TextButton(
                    onPressed: () {
                      setState(() {
                        Map map1 = {};
                        map1["name"] = name.text;
                        map1["id"] = id.text;
                        map1["avatar"] = avatar.text;
                        print(map1);
                        if (IU!) {
                          insertAPI(map1).then(
                            (value) {
                              Navigator.of(context).pop();
                            },
                          );
                        } else {
                          updateAPI(map1, map1['id'].toString()).then(
                            (value) {
                              Navigator.of(context).pop();
                            },
                          );
                        }
                      });
                    },
                    child: Text(
                      'submint',
                      style: TextStyle(fontSize: 25),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> insertAPI(map1) async {
    var reasponce1 = await http.post(
        Uri.parse('https://64fca63a605a026163aeb538.mockapi.io/demo'),
        body: map1);
    print('responce1 : $reasponce1');
  }

  Future<void> updateAPI(map1, id) async {
    var reasponce2 = await http.put(
        Uri.parse('https://64fca63a605a026163aeb538.mockapi.io/demo/$id'),
        body: map1);
    print('responce2 : $reasponce2');
  }
}
