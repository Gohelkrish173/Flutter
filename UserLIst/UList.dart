import './Profile.dart';
import 'package:flutter/material.dart';

import './Add.dart';

class UL extends StatefulWidget {
  Map map = {};

  UL({Map? map}) {
    this.map = map!;
  }

  @override
  State<UL> createState() => _ULState();
}

class _ULState extends State<UL> {

  Map<String,dynamic> map2 = {};

  TextEditingController UID = TextEditingController();
  TextEditingController Name = TextEditingController();
  TextEditingController Mobile = TextEditingController();
  TextEditingController Email = TextEditingController();

  List<Map> li = [];

  Widget L([index]) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "${li[index]['UID']}",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 25, color: Colors.red),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        map2['UID'] = li[index]['UID'];
                        map2['Name'] = li[index]['Name'];
                        map2['Mobile'] = li[index]['Mobile'];
                        map2['Email'] = li[index]['Email'];
                      });
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Profile(map: map2,);
                      }));
                    },
                    child: Text(
                      '${li[index]['Name']}',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Colors.green),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            map2['UID'] = li[index]['UID'];
                            map2['Name'] = li[index]['Name'];
                            map2['Mobile'] = li[index]['Mobile'];
                            map2['Email'] = li[index]['Email'];
                          });
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Add(map: map2,);
                              },
                            ),
                          ).then(
                                (value) {
                              setState(
                                    () {
                                  li[index] = value;
                                },
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.edit,
                          color: Colors.orange,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            li.removeAt(index);
                          });
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Menubar(item, {right = 0.0, left = 0.0, dcolor = Colors.black}) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.amber,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.brown[300],
        border: BorderDirectional(
          //   top: BorderSide(width: 2, color: dcolor),
          //   bottom: BorderSide(width: 2, color: dcolor),
          start: BorderSide(width: left, color: dcolor),
          end: BorderSide(width: right, color: dcolor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("UserList",
            style: TextStyle(
                fontSize: 25,
                color: Colors.red,
                letterSpacing: 2,
                fontWeight: FontWeight.w700)),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                map2['UID'] = null;
                map2['Name'] = null;
                map2['Mobile'] = null;
                map2['Email'] = null;
              });
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Add(map: map2,);
                  },
                ),
              ).then(
                (value) {
                  setState(
                    () {
                      li.add(value);
                    },
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Icon(
                Icons.add_circle,
                color: Colors.yellow,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Menubar("UserID",
                      left: 2.0, right: 1.0, dcolor: Colors.grey),
                ),
                Expanded(
                  flex: 4,
                  child: Menubar("User Name",
                      left: 1.0, right: 2.0, dcolor: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 12,
            child: li.length > 0
                ? ListView.builder(
                    itemBuilder: (context, index) {
                      return L(index);
                    },
                    itemCount: li.length,
                  )
                : Text(
                    "No Data Found",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      color: Colors.grey,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
