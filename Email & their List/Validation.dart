import 'UserList.dart';
import 'package:flutter/material.dart';

class Vali extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class V extends StatefulWidget {
  const V({super.key});

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  TextEditingController EmailVali = TextEditingController();
  TextEditingController PassVali = TextEditingController();
  String Email = "";
  String Pass = "";
  bool buton = false;
  bool buton2 = false;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Email Validation",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.pink,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.only(top: 20),
          child: Card(
            color: Colors.green,
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          if (value == "") {
                            buton = false;
                          } else {
                            buton = true;
                          }
                        });
                      },
                      controller: EmailVali,
                      cursorColor: Colors.blue,
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                      decoration: InputDecoration(
                        suffixIcon: buton
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    if (buton) {
                                      EmailVali.text = "";
                                      buton = false;
                                    }
                                  });
                                },
                                child: Icon(Icons.close, color: Colors.yellow))
                            : null,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.lightGreen, width: 3),
                        ),
                        focusColor: Colors.cyan,
                        labelText: "Enter Your Email",
                        labelStyle: TextStyle(color: Colors.amber),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please Enter Email';
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                        onChanged: (value) {
                          if (value == "") {
                            buton2 = false;
                          } else {
                            buton2 = true;
                          }
                        },
                        controller: PassVali,
                        cursorColor: Colors.blue,
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: buton2
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (buton2) {
                                        PassVali.text = "";
                                        buton2 = false;
                                      }
                                    });
                                  },
                                  child: Icon(Icons.close))
                              : null,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.greenAccent, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.lightGreen, width: 3),
                          ),
                          focusColor: Colors.cyan,
                          labelText: "Enter Your Password",
                          labelStyle: TextStyle(color: Colors.amber),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return 'Please Enter Password';
                          } else if (value!.length < 5) {
                            return 'Enter Valid Password';
                          }
                          ;
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Email = EmailVali.text.toString();
                          Pass = PassVali.text.toString();
                          if (formkey.currentState!.validate()) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return UserList();
                                },
                              ),
                            );
                          }
                        });
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Email :\n ${Email}\n",
                          style: TextStyle(
                              color: Colors.blue[300],
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Password :\n ${Pass}",
                          style: TextStyle(
                              color: Colors.blue[300],
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
