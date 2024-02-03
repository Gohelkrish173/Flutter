import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Map map = {};
  Profile({Map? map}){
   this.map = map!;
  }

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  TextEditingController UID = TextEditingController();
  TextEditingController Name = TextEditingController();
  TextEditingController Mobile = TextEditingController();
  TextEditingController Email = TextEditingController();

  @override
  void initState() {
    UID.text = widget.map['UID']??'';
    Name.text = widget.map['Name']??'';
    Mobile.text = widget.map['Mobile']??'';
    Email.text = widget.map['Email']??'';
  }

  Widget box(name, val) {
    return Row(
      children: [
        Text(
          "$name : ",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "$val",
          style: TextStyle(
            color: Colors.green,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_box_rounded,
              size: 32,
              color: Colors.red,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w600, color: Colors.red),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        height: 500,
        width: double.infinity,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 200,
                width: 200,
                child: Icon(Icons.account_circle_rounded,color: Colors.grey[700],size: 200,),
              ),
              box("User Id", UID.text),
              SizedBox(height: 10,),
              box("Name", Name.text),
              SizedBox(height: 10,),
              box("Mobile", Mobile.text),
              SizedBox(height: 10,),
              box("Email", Email.text),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
