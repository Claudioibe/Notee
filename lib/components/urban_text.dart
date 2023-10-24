import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UrbanText extends StatelessWidget {
  const UrbanText(
      {super.key, required this.text, required this.fontsize, required this.textcolor,this.fontWeight});

  final String text;
  final double? fontsize;
  final Color? textcolor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        textStyle: TextStyle(fontSize: fontsize, color: textcolor, fontWeight:fontWeight),
      ),
    );
  }
}
