import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OneLineText extends StatelessWidget {
  const OneLineText({
    Key? key,
    required this.inputText,
  }) : super(key: key);

  final String inputText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      color: Colors.transparent,
      alignment: Alignment.center,
      child: Text(
        'Status',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: const Color(0xff292E69),
        ),
      ),
    );
  }
}