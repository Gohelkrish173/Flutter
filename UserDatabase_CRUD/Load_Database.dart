import 'dart:convert';

import 'package:demo/Lacture%20Practice/UserDatabase_CRUD/Insert_Into_Database.dart';
import 'package:demo/database/user_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Load_Database extends StatefulWidget {
  @override
  State<Load_Database> createState() => _Load_DatabaseState();
}

class _Load_DatabaseState extends State<Load_Database> {
  TextEditingController cname = TextEditingController();
  TextEditingController cmobile = TextEditingController();
  TextEditingController cemail = TextEditingController();
  TextEditingController ccityId = TextEditingController();

  User_Database db = User_Database();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Data :-",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Insert_Database(null);
                      },
                    ),
                  ).then(
                    (value) {
                      setState(() {});
                    },
                  );
                },
                child: Icon(
                  Icons.add_circle,
                  size: 30,
                  color: Colors.amber,
                )),
          ),
        ],
      ),
      body: FutureBuilder<bool>(
        builder: (context, snapshot1) {
          if (snapshot1 != null && snapshot1.hasData) {
            return FutureBuilder<List<Map<String, Object?>>>(
              builder: (context, snapshot) {
                if (snapshot != null && snapshot.hasData) {
                  snapshot.data!.toString();
                  return Center(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Insert_Database(
                                      snapshot.data![index],
                                    );
                                  },
                                ),
                              ).then(
                                (value) {
                                  setState(() {});
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(color: Colors.blue),
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    snapshot.data![index]["Name"].toString(),
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    snapshot.data![index]["Mobile"].toString(),
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    snapshot.data![index]["Email"].toString(),
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    snapshot.data![index]["City_Name"]
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      deleteUser(
                                              snapshot.data![index]["Mobile"])
                                          .then(
                                        (value) {
                                          setState(() {});
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.delete_rounded,
                                      color: Colors.grey,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: snapshot.data!.length,
                    ),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
              future: db.getUserListFromUserTbl(),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
        future: db.copyPasteAssetFileToRoot(),
      ),
    );
  }

  Future<int> deleteUser(mobile) async {
    int userId = await User_Database().DeteleUserDetail(mobile);
    return userId;
  }
}
