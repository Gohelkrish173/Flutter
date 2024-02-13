import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class local_json extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // await rootBundle.loadString('assets/Json/localjson.json');
    return Scaffold(
        body: FutureBuilder(
      builder: (context, snapshot) {
        List jsondata = json.decode(
          snapshot.data.toString(),
        );
        return Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        jsondata[index]["name"].toString(),
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        jsondata[index]["avatar"].toString(),
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        jsondata[index]["id"].toString(),
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: jsondata.length,
          ),
        );
      },
      future: rootBundle.loadString('assets/Json/localjson.json'),
    ));
  }
}
