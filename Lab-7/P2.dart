
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class P2 extends StatelessWidget{

  Widget T(String N){
    return Text(N,style: GoogleFonts.abel(fontSize: 50,color: Colors.blue,fontWeight: FontWeight.w700),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: T("Hello"),
    ),
    );
  }

}