import 'package:demo/database/user_database.dart';
import 'package:demo/model/city_model.dart';
import 'package:flutter/services.dart';
import 'package:demo/Lacture Practice/UserDatabase_CRUD/Load_Database.dart';
import 'package:flutter/material.dart';

class Insert_Database extends StatefulWidget {
  Map<String,Object?>? map;

  Insert_Database(map){
    this.map=map;
  }

  @override
  State<Insert_Database> createState() => _Insert_DatabaseState();
}

class _Insert_DatabaseState extends State<Insert_Database> {
  TextEditingController cid = TextEditingController();
  TextEditingController cname = TextEditingController();
  TextEditingController cmobile = TextEditingController();
  TextEditingController cemail = TextEditingController();
  // CityModel cityname = CityModel();
  // bool check = false;
  // int ccityid = 0;

  @override
  void initState() {
    super.initState();
    cname.text = widget.map == null ? '' : widget.map!['Name'].toString();
    cmobile.text = widget.map == null ? '' : widget.map!['Mobile'].toString();
    cemail.text = widget.map == null ? '' : widget.map!['Email'].toString();
    // cityname.City_Name = widget.map!['City_Name'].toString();
    // check = widget.map == null ? false : true;
    // ccityid = widget.map == null ? 0 : widget.cid!;
    // ccityid = widget.map!['CityId'] as int;
  }

  User_Database db = User_Database();

  CityModel? _ddSelectedValue;


  bool isCityListGet = true;

  var formkey = GlobalKey<FormState>();

  Widget InputText(hintmessage, controler, valivalue) {
    return TextFormField(
      controller: controler,
      validator: (value) {
        if (value != null && value.isEmpty) {
          return ('Please Enter ${valivalue}');
        }
        return null;
      },
      style: TextStyle(
        fontSize: 20,
        color: Colors.red,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ),
      decoration: InputDecoration(
        hintText: hintmessage,
        hintStyle: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.pink),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.cyan),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.orange),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "-: Insert Data :-",
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w400,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          // color: Colors.amber,
          height: 800,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InputText("Enter A User Name", cname, 'Name'),
              SizedBox(height: 5),
              InputText("Enter A Mobile Number", cmobile, 'Mobile Number'),
              SizedBox(height: 5),
              InputText("Enter A Email", cemail, 'Email'),
              SizedBox(height: 5),
              FutureBuilder<List<CityModel>>(
                future: isCityListGet ? db.getCityList() : null,
                builder: (context, snapshot) {
                  if (snapshot != null && snapshot.hasData) {
                    if (isCityListGet) {
                      _ddSelectedValue = snapshot.data![0];
                      isCityListGet = false;
                    }
                    return DropdownButton(
                      value: _ddSelectedValue,
                      items: snapshot.data!.map(
                        (CityModel e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(
                              e.City_Name.toString(),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {
                        setState(() {
                          _ddSelectedValue = value;
                        });
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  if (widget.map == null) {
                    insertUser().then((value) => Navigator.of(context).pop());
                  } else {
                    updateUser(widget.map!['Mobile'])
                        .then((value) => Navigator.of(context).pop());
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "INSERT",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.amber,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<int> insertUser() async {
    Map<String, dynamic> map = {};
    map['Name'] = cname.text;
    map['Mobile'] = cmobile.text;
    map['Email'] = cemail.text;
    map['CityId'] = _ddSelectedValue!.CityId;

    // print(map['CityId'].City_Name);
    int userId = await User_Database().insertUserDetail(map);
    return userId;
  }

  Future<int> updateUser(mobile) async {
    Map<String, dynamic> map = {};
    map['Name'] = cname.text;
    map['Mobile'] = cmobile.text;
    map['Email'] = cemail.text;
    map['CityId'] = _ddSelectedValue!.CityId;

    int userId = await User_Database().UpdateUserDetail(map, mobile);
    return userId;
  }


}
