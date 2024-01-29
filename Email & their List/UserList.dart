import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UL(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UL extends StatefulWidget {
  const UL({super.key});

  @override
  State<UL> createState() => _ULState();
}

class _ULState extends State<UL> {
  List<Map> li = [];

  void initUser() {
    Map<String, dynamic> map = {};
    map['email'] = "krishgohel173@gmail.com";
    map['password'] = "krish173";
    li.add(map);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            "List",
            style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.w900,
                letterSpacing: 2),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {

            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.add_circle,
                size: 35,
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email : ${li[0]['email']}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Password : ${li[0]['password']}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: li.length,
      ),
    );
  }
}
