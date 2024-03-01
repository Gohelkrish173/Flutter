import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ADD_Product extends StatefulWidget {
  Map? map = {};

  ADD_Product({map}) {
    this.map = map;
  }

  @override
  State<ADD_Product> createState() => _ADD_ProductState();
}

class _ADD_ProductState extends State<ADD_Product> {
  TextEditingController id = TextEditingController();
  TextEditingController Pname = TextEditingController();
  TextEditingController Price = TextEditingController();

  bool? IU;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Pname.text =
        widget.map == null ? '' : widget.map!["productname"].toString();
    Price.text = widget.map == null ? '' : widget.map!["price"].toString();
    id.text = widget.map == null ? '' : widget.map!["id"].toString();
    IU = widget.map == null ? true:false;
    print(IU);
  }

  Widget Add(controler, hinttxt) {
    return TextFormField(
      controller: controler,
      decoration: InputDecoration(
        hintText: hinttxt,
        hintStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Add Product',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 850,
          decoration: BoxDecoration(color: Colors.grey),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Add(Pname, "Enter Product name"),
                  SizedBox(
                    height: 5,
                  ),
                  Add(Price, "Enter Amount of Product"),
                  SizedBox(
                    height: 5,
                  ),
                  Add(id, "Enter Id"),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Map map2 = {};
                          map2["productname"] = Pname.text;
                          map2["price"] = Price.text;
                          map2["id"] = id.text;
                          if (IU!) {
                            print('abc');
                            insertProduct(map2).then(
                                  (value) {
                                Navigator.of(context).pop();
                              },
                            );
                          }
                          else{
                            print(map2);
                            updateProduct(map2, map2['id'].toString()).then((value) {
                              Navigator.of(context).pop();
                            });
                          }
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.red,
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> insertProduct(map1) async {
  var responce = await http.post(
      Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Product"),
      body: map1);
  print("Responce : $responce");
}

Future<void> updateProduct(map1,id) async {
  var responce = await http.put(Uri.parse("https://64fca63a605a026163aeb538.mockapi.io/Product/$id"),body: map1);
  print("Responce : $responce");
}