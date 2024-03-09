import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget MobilePage;
  final Widget TabPage;

  Layout({required this.MobilePage,required this.TabPage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < 480 && constraints.maxHeight <920) {
          return MobilePage;
        }
        else{
          return TabPage;
        }
      },
    );
  }
}
