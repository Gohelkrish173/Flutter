
import 'package:demo/Layout_of_Typing_tutor//MobilePage.dart';
import 'package:demo/Layout_of_Typing_tutor/Layout.dart';
import 'package:demo/Layout_of_Typing_tutor/TabPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(MobilePage: Mobile(),TabPage: TabPage()),
    );
  }
}