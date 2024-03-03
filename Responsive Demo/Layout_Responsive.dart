import 'package:flutter/material.dart';
import 'Dimension.dart';

class Layout extends StatelessWidget{
  final Widget MobileBody;
  final Widget DesktopBody;

  Layout({required this.MobileBody,required this.DesktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth < mobileWidth){
          return MobileBody;
        }
        else{
          return DesktopBody;
        }
      }
    );
  }
}