
import 'package:flutter/material.dart';
class TabPage extends StatefulWidget{
  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  var time = [1, 2, 5, 10, 30, 60];
  var colors = [true,false,false,false];
  var setColor = Colors.deepPurple;

  var dropdownvalue = 1;

  Widget TimerDropDown() {
    return DropdownButton(
      value: dropdownvalue,
      items: time.map((int time) {
        return DropdownMenuItem(
          value: time,
          child: Text(time.toString() + ' Minute'),
        );
      }).toList(),
      onChanged: (int? newvalue) {
        setState(() {
          dropdownvalue = newvalue!;
        });
      },
      icon: Icon(Icons.arrow_drop_down),
      borderRadius: BorderRadius.circular(20),
      dropdownColor: Colors.deepPurple,
      style: TextStyle(color: Colors.white),
    );
  }
  Widget Cards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: setColor[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        'https://www.typinglounge.com/wp-content/uploads/2018/08/home-row-keys.jpg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Home Row',
                        style: TextStyle(
                          color: Colors.orange,
                          letterSpacing: 1,
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TimerDropDown(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: Checkbox.width,
        ),
        Card(
          color: setColor[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        'https://www.typinglounge.com/wp-content/uploads/2018/08/home-row-keys.jpg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Home Row',
                        style: TextStyle(
                          color: Colors.orange,
                          letterSpacing: 1,
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TimerDropDown(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget SelectColor(scolor,index) {
    return Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: colors[index] ? Border.all(color: scolor,width: 3) : Border.all(color: Colors.transparent,width: 3),
          borderRadius: BorderRadius.circular(30)),
      child: InkWell(
        onTap: () {
          setState(() {
            if(!colors[index]) {
              colors[index] = true;
              var i = 0;
              for(i=0;i<colors.length;i++){
                if(i != index && colors[i] == colors[index]){
                  colors[i] = false;
                  index == 0 ? setColor = Colors.deepPurple : index == 1 ? setColor = Colors.blue : index == 2 ? setColor = Colors.amber : index == 3 ? setColor = Colors.green : null;
                }
              }
            }
            else{
              colors[index] = false;
            }
          });
        },
        child: Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: scolor,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width1 = size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: setColor[100],
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Container(
            width: 100,
            height: 70,
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.grey),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectColor(Colors.purple,0),
                SizedBox(width: 10),
                SelectColor(Colors.blue,1),
                SizedBox(width: 10,),
                SelectColor(Colors.amber,2),
                SizedBox(width: 10,),
                SelectColor(Colors.green,3),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Center(
            child: Text('Select Row',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500))),
        backgroundColor: setColor[400],
      ),
      backgroundColor: setColor[100],
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              width: width1,
              padding: EdgeInsets.all(8),
              child: Cards(),
            );
          },
          itemCount: 8),
    );
  }
}