import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({
    Key? key,
    required this.temp,
    this.fontSize = 100,
    this.fontWeight = FontWeight.w700,
    this.color = Colors.black,
  }) : super(key: key);

  final int temp;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: 0.75,
        child: Text(
          '$temp°',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          ),
        ));
  }
}