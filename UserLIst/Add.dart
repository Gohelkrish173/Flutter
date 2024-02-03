import 'package:flutter/material.dart';

import './UList.dart';

class Add extends StatefulWidget {
  Map map = {};

  Add({Map? map}){
    this.map = map!;
  }

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController UID = TextEditingController();
  TextEditingController Name = TextEditingController();
  TextEditingController Mobile = TextEditingController();
  TextEditingController Email = TextEditingController();

  Map<String, dynamic> map = {};

  var formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    UID.text = widget.map['UID']??'';
    Name.text = widget.map['Name']??'';
    Mobile.text = widget.map['Mobile']??'';
    Email.text = widget.map['Email']??'';
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.yellow),
              children: <TextSpan>[
                TextSpan(text: "-:  ADD  :-"),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600,
          padding: EdgeInsets.all(5),
          child: Card(
            color: Colors.grey[300],
            child: Form(
              key: formkey,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: UID,
                      validator: (value) {
                        if( value !=null && value.isEmpty){
                          return('Please Enter UserID');
                        }
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20, color: Colors.pink),
                        hintText: "Enter UserID",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.red,
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                      ),
                      cursorHeight: 30,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      controller: Name,
                      validator: (value){
                        if( value !=null && value.isEmpty){
                          return("Please Enter Name");
                        }
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20, color: Colors.pink),
                        hintText: "Enter UserName",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.red,
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                      ),
                      cursorHeight: 30,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      controller: Mobile,
                      validator: (value) {
                        if( value!=null && value.isEmpty){
                          return("Please Enter Mobile No.");
                        }
                        if( value!=null && value.length != 10){
                          return("Please Enter A valid Number");
                        }
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20, color: Colors.pink),
                        hintText: "Enter Mobile Number",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.red,
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                      ),
                      cursorHeight: 30,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      validator: (value) {
                        if(value != null && value.isEmpty){
                          return("Please Enter Email");
                        }
                      },
                      controller: Email,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20, color: Colors.pink),
                        hintText: "Enter Email",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.red,
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                      ),
                      cursorHeight: 30,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10,),
                    TextButton(
                      onPressed: () {
                        setState(
                          () {
                            map['UID'] = UID.text;
                            map['Name'] = Name.text.toString().toLowerCase();
                            map['Mobile'] = Mobile.text;
                            map['Email'] = Email.text.toString();
                            if(formkey.currentState!.validate()){
                              Navigator.of(context).pop(map);
                            }
                          },
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.yellow,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
