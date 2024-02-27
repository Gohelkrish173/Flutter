import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class Time_Count_Down extends StatefulWidget {
  @override
  State<Time_Count_Down> createState() => _Time_Count_DownState();
}

class _Time_Count_DownState extends State<Time_Count_Down> {
  var times = [0,2,5,10,30,60];

  int dropdownvalue = 0;
  bool StartCountDown = false;

  Duration? duration;

  Widget countdowntimer({dropdownvalue = 0}){
    return TimerCountdown(
      endTime: DateTime.now().add(
        Duration(
          minutes: dropdownvalue,
          seconds: 0,
          hours: 0,
        ),
      ),
      onEnd: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Time's Up"),
              content: Text("The selected time is over."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      },
      enableDescriptions: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.yellow,
          width: double.infinity,
          height: 850,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    value: dropdownvalue,
                    icon: Icon(Icons.arrow_drop_down),
                    items: times.map((int times){
                      return DropdownMenuItem(value: times,child: Text(times.toString(),));
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                  SizedBox(width: 5,),
                  Text('Minutes',style: TextStyle(fontWeight: FontWeight.w500),)
                ],
              ),
              StartCountDown ? countdowntimer(dropdownvalue: dropdownvalue) : SizedBox(),
              SizedBox(height: 5,),
              TextFormField(onChanged: (value) {
                setState(() {
                  StartCountDown = value.isNotEmpty;
                });
              },
                decoration: InputDecoration(
                  hintText: 'Enter a char',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
