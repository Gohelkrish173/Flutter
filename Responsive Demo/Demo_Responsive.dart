import 'package:demo/Lacture%20Practice/Responsive%20Demo/Layout_Responsive.dart';
import 'package:demo/Lacture%20Practice/Responsive%20Demo/MobileBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'DesktopBody.dart';

class Demo_MediaQuery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(MobileBody: MobileBody(),DesktopBody: DesktopBody()),
    );
  }
}